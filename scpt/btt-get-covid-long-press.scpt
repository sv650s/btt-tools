-- NOTE. This works.. was trying to trigger the main widget to refresh
-- though returning JSON would help but it doesn't

set DEBUG to false

-- load global variables
set globalVars to (load script "/Users/vinceluk/Dropbox/projects/btt/scpt/global-vars.scpt")


set COUNTRY_DEFAULT to "THA"

set ICON_THA to "thighland.png"
set ICON_SFO to "SFO.png"


tell application "BetterTouchTool"
	-- try
	-- activate
	set Country to get_string_variable "CoronaVirusCountry"

	if (Country is missing value) or (Country is "USA") then
		set newCountry to "THA"
		set scriptOuput to (do shell script "source ~/.bash_profile && cd ~/Dropbox/projects/btt && conda run -n btt python get_covid_daily_data.py COUNTRY Thailand newcases")
		set icon to ICON_THA

	else
		set newCountry to "USA"
		set scriptOutput to (do shell script "source ~/.bash_profile && cd ~/Dropbox/projects/btt && conda run -n btt python get_covid_daily_data.py CA 'San Francisco' newcases")
		set icon to ICON_SFO

	end if
	set_persistent_string_variable "CoronaVirusCountry" to newCountry


	set output_lines to my splitLine(scriptOutput, "|")
	set todayCount to item 1 of output_lines
	set ydaCount to item 2 of output_lines

	log "todayCount:" & todayCount
	log "ydaCount:" & ydaCount

	set fontColor to (the COLOR_WHITE of globalVars)
	set backgroundColor to (the COLOR_BLACK of globalVars)

	if todayCount is not "N/A" then
		if todayCount > ydaCount then
			set fontColor to (the COLOR_RED of globalVars)
		else
			set fontColor to (the COLOR_GREEN of globalVars)
		end if
	end if


	-- return output


	return "{\"text\": \"2DA: " & todayCount & "\\nYDA: " & ydaCount & "\",
\"backgroundColor\": \"" & backgroundColor & "\",
\"icon_path\": \"" & (the ICON_PATH of globalVars) & iconPath & "\",
\"fontColor\": \"" & fontColor & "\"}"

	(*
		set theCountryChoice to display dialog "Specify Country to Track CoronaVirus" default answer Country with icon note buttons {"Cancel", "Continue"} default button "Continue"
		if (text returned of theCountryChoice) is not "" then
			set_persistent_string_variable "CoronaVirusCountry" to (text returned of theCountryChoice)
			display notification "Country Set:  " & (text returned of theCountryChoice) with title "CoronaVirus Tracker" sound name "Bottle"

		end if
		*)

	-- end try
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

