

on run argv

	set DEBUG to false

	-- load global variables
	set globalVars to (load script "/Users/vinceluk/Dropbox/projects/btt/scpt/global-vars.scpt")

	set COUNTRY_DEFAULT to "THA"

	set ICON_THA to "thighland.png"
	set ICON_SFO to "SFO.png"



	-- we still have to tell the group what data to pull
	tell application "BetterTouchTool"


		if DEBUG is true then
			set currentCountry to "USA"
		else if length of argv is 1 then
			set currentCountry to item 1 of argv as text
		else
			set currentCountry to get_string_variable "CoronaVirusCountry"
			if currentCountry is missing value then
				set currentCountry to COUNTRY_DEFAULT
				set_persistent_string_variable "CoronaVirusCountry" to currentCountry
			end if
		end if



		log "currentCountry: " & currentCountry





		set displayToggle to get_string_variable "VLCOVIDDisplayToggle"
		if displayToggle is missing value then
			set_persistent_string_variable "VLCOVIDDisplayToggle" to 0
			set displayToggle to 0
		end if
		log "displayToggle: " & displayToggle

		if currentCountry is "USA" then
			log "getting info from USA"
			set script_output to (do shell script "source ~/.bash_profile && cd ~/Dropbox/projects/btt && conda run -n btt python get_covid_daily_data.py CA 'San Francisco' newcases")
			set icon to (the ICON_SFO of globalVars)
		else if currentCountry is "THA" then
			log "getting info for THA"
			-- TODO: change script to take in country code
			set script_output to (do shell script "source ~/.bash_profile && cd ~/Dropbox/projects/btt && conda run -n btt python get_covid_daily_data.py COUNTRY Thailand newcases")
			set icon to (the ICON_THA of globalVars)
		end if

		set output_lines to my splitLine(script_output, "|")
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
\"icon_path\": \"" & (the ICON_PATH of globalVars) & icon & "\",
\"fontColor\": \"" & fontColor & "\"}"

	end tell

end run

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

