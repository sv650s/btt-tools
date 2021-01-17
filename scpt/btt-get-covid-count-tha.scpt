set DEBUG to false
set DISPLAY_TWO_COLUMNS to false
-- three letter country code
set CURRENT_COUNTRY to "THA"


-- load functions
tell application "Finder" to set _myPath to container of (path to me) as text
set gf_path to _myPath & "global-functions.scpt"
set _globalFns to load script (alias (gf_path))


-- read global variables
-- get home path and translate to POSIX format so we can use this across different users
set _globalVars to load script (alias (_myPath & "global-vars.scpt"))
-- this is the old hardcoded way
-- set home_path to POSIX path of (path to home folder as string)
-- set _globalVars to (load script home_path & "/Dropbox/projects/btt/scpt/global-vars.scpt")



-- set _globalVars to (load script "/Users/vinceluk/Dropbox/projects/btt/scpt/global-vars.scpt")


-- today has to be less than this threshold compared to yesterday before we use green
set THRESHOLD to 50



-- we still have to tell the group what data to pull
tell application "BetterTouchTool"
	set_persistent_string_variable "CoronaVirusCountry" to CURRENT_COUNTRY
	-- 	set_persistent_string_variable "CoronaVirusCountry" to "THA"

	(*
	output has 4 things
	* today's new case count (THA)
	* today's new case count for BKK provence
	* yesterday's new case count (THA)
	* yesterday's new case count for BKK provence
	*)
	if DEBUG is false then
		if DISPLAY_TWO_COLUMNS is true then
			set th_data to (do shell script "source ~/.bash_profile && cd ~/Dropbox/projects/btt && conda run -n btt python get_covid_daily_data.py COUNTRY Thailand --source th-data")
		else
			set th_data to (do shell script "source ~/.bash_profile && cd ~/Dropbox/projects/btt && conda run -n btt python get_covid_daily_data.py COUNTRY Thailand")
		end if
	else
		if DISPLAY_TWO_COLUMNS is true then

			set th_data to "N/A|N/A|205|46"
			-- set th_data to "215|32|205|46"
		else
			set th_data to "205|46"
		end if
	end if

	set output_lines to my _globalFns's splitLine(th_data, "|")
	if DISPLAY_TWO_COLUMNS is true then
		set todayCountTHA to item 1 of output_lines
		set todayCountBKK to item 2 of output_lines
		set ydaCountTHA to item 3 of output_lines
		set ydaCountBKK to item 4 of output_lines
	else
		set todayCountTHA to item 1 of output_lines
		set ydaCountTHA to item 2 of output_lines
	end if

	log "todayCountTHA:" & todayCountTHA
	log "ydaCountTHA:" & ydaCountTHA

	set fontColor to (the COLOR_WHITE of _globalVars)
	set background_color to (the COLOR_BLACK of _globalVars)

	(*
	less (green)
	same (yellow)
	more (red)
	*)
	set jsonOutput to ""
	if todayCountTHA is not "N/A" then
		log "displaying today's data"
		-- set this so we can derive color tomorrow when it's N/A
		set_persistent_string_variable "VLCoronaVirusCountryYDACountTHA" to ydaCountTHA
		if DISPLAY_TWO_COLUMNS is true then
			set_persistent_string_variable "VLCoronaVirusCountryYDACountBKK" to ydaCountBKK
		end if

		set diff to todayCountTHA - ydaCountTHA as number



		if todayCountTHA > ydaCountTHA then
			set fontColor to (the COLOR_RED of _globalVars)
		else if todayCountTHA < ydaCountTHA and diff < -1 * THRESHOLD then
			set fontColor to (the COLOR_GREEN of _globalVars)
		else
			set fontColor to (the COLOR_YELLOW of _globalVars)
		end if


		if DISPLAY_TWO_COLUMNS is true then
			set displayText to "2DA: " & todayCountTHA & "\\t" & ydaCountTHA & "\\nBKK:        " & todayCountBKK & "\\t" & ydaCountBKK
		else
			set displayText to "2DA: " & todayCountTHA & "\\nYDA: " & ydaCountTHA
		end if


	else
		log "today's data not available, display yesterday's data"
		-- day before yesterday's count was stored in VLCoronaVirusCountryYDACountTHA
		set dayBeforeCountTHA to get_string_variable "VLCoronaVirusCountryYDACountTHA"
		if dayBeforeCountTHA is missing value then
			set dayBeforeCountTHA to "N/A"
		end if
		log "dayBeforeCountTHA: " & dayBeforeCountTHA

		if DISPLAY_TWO_COLUMNS is true then
			set dayBeforeCountBKK to get_string_variable "VLCoronaVirusCountryYDACountBKK"
			-- we may not have this value the first time you run
			if dayBeforeCountBKK is missing value then
				set dayBeforeCountBKK to "N/A"
			end if
			log "dayBeforeCountBKK: " & dayBeforeCountBKK
		end if


		-- displaying yesterday's data - let's use grey
		set fontColor to (the COLOR_GREY of _globalVars)

		if DISPLAY_TWO_COLUMNS is true then
			set displayText to "YDA: " & ydaCountTHA & "\\t" & dayBeforeCountTHA & "\\nBKK:        " & ydaCountBKK & "\\t" & dayBeforeCountBKK
		else
			set displayText to "YDA: " & ydaCountTHA & "\\nDBY: " & ydaCountTHA
		end if

	end if

	return "{\"text\": \"" & displayText & "\",
\"background_color\": \"" & background_color & "\",
\"font_color\": \"" & fontColor & "\"}"


end tell


