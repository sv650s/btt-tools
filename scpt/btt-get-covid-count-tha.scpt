set DEBUG to false

-- read global variables
set globalVars to (load script "/Users/vinceluk/Dropbox/projects/btt/scpt/global-vars.scpt")


-- today has to be less than this threshold compared to yesterday before we use green
set THRESHOLD to 50



-- we still have to tell the group what data to pull
tell application "BetterTouchTool"
	set_persistent_string_variable "CoronaVirusCountry" to "THA"

	(*
	output has 4 things
	* today's new case count (THA)
	* today's new case count for BKK provence
	* yesterday's new case count (THA)
	* yesterday's new case count for BKK provence
	*)
	if DEBUG is false then
		set th_data to (do shell script "source ~/.bash_profile && cd ~/Dropbox/projects/btt && conda run -n btt python get_covid_daily_data.py COUNTRY Thailand --source th-data")
	else
		set th_data to "N/A|N/A|205|46"
		-- set th_data to "215|32|205|46"
	end if

	set output_lines to my splitLine(th_data, "|")
	set todayCountTHA to item 1 of output_lines
	set todayCountBKK to item 2 of output_lines
	set ydaCountTHA to item 3 of output_lines
	set ydaCountBKK to item 4 of output_lines

	log "todayCountTHA:" & todayCountTHA
	log "ydaCountTHA:" & ydaCountTHA

	set fontColor to (the COLOR_WHITE of globalVars)
	set background_color to (the COLOR_BLACK of globalVars)

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
		set_persistent_string_variable "VLCoronaVirusCountryYDACountBKK" to ydaCountBKK

		set diff to todayCountTHA - ydaCountTHA as number



		if todayCountTHA > ydaCountTHA then
			set fontColor to (the COLOR_RED of globalVars)
		else if todayCountTHA < ydaCountTHA and diff < -1 * THRESHOLD then
			set fontColor to (the COLOR_GREEN of globalVars)
		else
			set fontColor to (the COLOR_YELLOW of globalVars)
		end if


		-- old way - just show today data
		--		set jsonOutput to "{\"text\": \"2DA: " & todayCountTHA & "\\nBKK: " & todayCountBKK & "\",
		set jsonOutput to "{\"text\": \"2DA: " & todayCountTHA & "\\t" & ydaCountTHA & "\\nBKK: " & todayCountBKK & "\\t" & ydaCountBKK & "\",
\"background_color\": \"" & background_color & "\",
\"font_color\": \"" & fontColor & "\"}"


	else
		log "today's data not available, display yesterday's data"
		-- display yesterday's data
		set dayBeforeCountTHA to get_string_variable "VLCoronaVirusCountryYDACountTHA"
		set dayBeforeCountBKK to get_string_variable "VLCoronaVirusCountryYDACountBKK"
		-- we may not have this value the first time you run
		if dayBeforeCountBKK is missing value then
			set dayBeforeCountBKK to "N/A"
		end if

		log "dayBeforeCountTHA: " & dayBeforeCountTHA
		log "dayBeforeCountBKK: " & dayBeforeCountBKK

		-- displaying yesterday's data - let's use grey
		set fontColor to (the COLOR_GREY of globalVars)

		-- old way - just show today data
		-- set jsonOutput to "{\"text\": \"YDA: " & ydaCountTHA & "\\nBKK: " & ydaCountBKK & "\",
		set jsonOutput to "{\"text\": \"YDA: " & ydaCountTHA & "\\t" & dayBeforeCountTHA & "\\nBKK: " & ydaCountBKK & "\\t" & dayBeforeCountBKK & "\",
\"background_color\": \"" & background_color & "\",
\"font_color\": \"" & fontColor & "\"}"

	end if

	return jsonOutput

end tell

-- implementation of split function
on splitLine(theString, theDelimiter)
	-- save delimiters to restore old settings
	set oldDelimiters to AppleScript's text item delimiters
	-- set delimiters to delimiter to be used
	set AppleScript's text item delimiters to theDelimiter
	-- create the array
	set theArray to every text item of theString
	-- restore the old setting
	set AppleScript's text item delimiters to oldDelimiters
	-- return the result
	log "theArray"
	log theArray
	return theArray
end splitLine

