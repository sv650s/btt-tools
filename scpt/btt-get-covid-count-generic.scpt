-- takes argument: COUNTRY
on run argv

	set DEBUG to false
	-- today has to be less n this threshold compared to yesterday before we use green
	set THRESHOLD to 50
	set THRESHOLD_PCT to 0.1
	if DEBUG then
		set COUNTRY to "US"
	else
		set COUNTRY to item 1 of argv as string
	end if


	-- load functions
	tell application "Finder" to set _myPath to container of (path to me) as text
	set gf_path to _myPath & "global-functions.scpt"
	set _globalFns to load script (alias (gf_path))


	-- read global variables
	-- get home path and translate to POSIX format so we can use this across different users
	set _globalVars to load script (alias (_myPath & "global-vars.scpt"))



	-- we still have to tell the group what data to pull
	tell application "BetterTouchTool"

		(*
	output has 4 things
	* today's new case count ()
	* today's new case count for BKK provence
	* yesterday's new case count ()
	* yesterday's new case count for BKK provence
	*)
		if DEBUG is false then
			set covid_data to (do shell script "source ~/.bash_profile && cd ~/Dropbox/projects/btt && conda run -n btt python get_covid_daily_data.py COUNTRY " & COUNTRY)
		else
			set covid_data to "N/A|205|46"
		end if

		set output_lines to my _globalFns's splitLine(covid_data, "|")
		set todayCount to item 1 of output_lines
		set ydaCount to item 2 of output_lines
		set dayBeforeCount to item 3 of output_lines

		log "todayCount:" & todayCount
		log "ydaCount:" & ydaCount

		set fontColor to (the COLOR_WHITE of _globalVars)
		set background_color to (the COLOR_BLACK of _globalVars)

		(*
	set dayBeforeCount to get_string_variable "VLCoronaVirusCountryYDACount"
	if dayBeforeCount is missing value then
		set dayBeforeCount to "N/A"
	end if
	log "dayBeforeCount: " & dayBeforeCount
	*)

		(*
	less (green)
	same (yellow)
	more (red)
	*)
		set jsonOutput to ""
		--	if todayCount is not "N/A" and dayBeforeCount is equal to dayBeforeCount then
		if todayCount is not "N/A" then
			log "displaying today's data"

			set diff to todayCount - ydaCount as number



			if todayCount > ydaCount then
				set fontColor to (the COLOR_RED of _globalVars)
			else if todayCount < ydaCount and diff < -1 * THRESHOLD then
				set fontColor to (the COLOR_GREEN of _globalVars)
			else
				set fontColor to (the COLOR_YELLOW of _globalVars)
			end if


			-- save space
			-- set displayText to "2DA: " & todayCount & "\\nYDA: " & ydaCount
			set displayText to todayCount & "\\nYDA: " & ydaCount


		else
			log "today's data not available, display yesterday's data"
			-- day before yesterday's count was stored in VLCoronaVirusCountryYDACount


			-- displaying yesterday's data - let's use grey
			set fontColor to (the COLOR_GREY of _globalVars)

			-- save space
			-- set displayText to "YDA: " & ydaCount & "\\nDBY: " & dayBeforeCount
			set displayText to ydaCount & "\\nDBY: " & dayBeforeCount

		end if

		return "{\"text\": \"" & displayText & "\",
\"background_color\": \"" & background_color & "\",
\"font_color\": \"" & fontColor & "\"}"


	end tell
end run


