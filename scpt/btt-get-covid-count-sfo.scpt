set DEBUG to false
set THRESHOLD to 50

-- load functions
tell application "Finder" to set _myPath to container of (path to me) as text
set gf_path to _myPath & "global-functions.scpt"
set _globalFns to load script (alias (gf_path))

-- read global variables
set _globalVars to load script (alias (_myPath & "global-vars.scpt"))
-- old way of loading
-- set home_path to POSIX path of (path to home folder as string)
-- set _globalVars to (load script home_path & "/Dropbox/projects/btt/scpt/global-vars.scpt")



-- we still have to tell the group what data to pull
tell application "BetterTouchTool"

	if DEBUG is false then
		set script_output to (do shell script "source ~/.bash_profile && cd ~/Dropbox/projects/btt && conda run -n btt python get_covid_daily_data.py CA 'San Francisco'")
	else
		set script_output to "200|500"
	end if

	set output_lines to my _globalFns's splitLine(script_output, "|")
	set today_count to item 1 of output_lines
	set yda_count to item 2 of output_lines

	log "today_count:" & today_count
	log "yda_count:" & yda_count

	set font_color to (the COLOR_WHITE of _globalVars)
	set background_color to (the COLOR_BLACK of _globalVars)

	(*
	less (green)
	same (yellow)
	more (red)
	*)
	if today_count is not "N/A" then
		-- set this so we can derive color tomorrow when it's N/A
		set_persistent_string_variable "VLCoronaVirusCountryYDACountSFO" to yda_count
		set diff to today_count - yda_count as number
		if today_count > yda_count and diff > THRESHOLD then
			set font_color to (the COLOR_RED of _globalVars)
		else if today_count < yda_count and diff < THRESHOLD * -1 then
			set font_color to (the COLOR_GREEN of _globalVars)
		else
			set font_color to (the COLOR_YELLOW of _globalVars)
		end if

		set output to "{\"text\": \"2DA: " & today_count & "\\nYDA: " & yda_count & "\",
\"background_color\": \"" & background_color & "\",
\"font_color\": \"" & font_color & "\"}"

	else
		-- get yesterday's color and set it
		set dayBeforeCount to get_string_variable "VLCoronaVirusCountryYDACountSFO"
		if dayBeforeCount is not missing value then
			set diff to yda_count - dayBeforeCount as number
			if yda_count > dayBeforeCount and diff > THRESHOLD then
				set font_color to (the COLOR_RED of _globalVars)
			else if yda_count < dayBeforeCount and diff < -1 * THRESHOLD then
				set font_color to (the COLOR_GREEN of _globalVars)
			else
				set font_color to (the COLOR_YELLOW of _globalVars)
			end if
		end if


		set output to "{\"text\": \"YDA: " & yda_count & "\\nDBY: " & dayBeforeCount & "\",
\"background_color\": \"" & background_color & "\",
\"font_color\": \"" & font_color & "\"}"


	end if



	return output

end tell


