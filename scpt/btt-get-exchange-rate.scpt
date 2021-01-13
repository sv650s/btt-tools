(*
Foreign Exchnage Rate API: https://exchangeratesapi.io/
*)

set DEBUG to false


-- read global variables
set home_path to POSIX path of (path to home folder as string)
set globalVars to (load script home_path & "/Dropbox/projects/btt/scpt/global-vars.scpt")


if DEBUG is true then
	set script_output to "31.20"
else
	set script_output to (do shell script "source ~/.bash_profile && cd ~/Dropbox/projects/btt && conda run -n btt python get_exchange_rate.py") -- as number
end if

(*
set output_description to ""
set background_color to ""

set font_color to (the COLOR_WHITE of globalVars)

if (script_output < 51) then
	-- good
	set background_color to (the COLOR_BLACK of globalVars)
	set font_color to (the COLOR_GREEN of globalVars)
	set output_description to "Good"
else if script_output < 101 then
	-- moderate
	set background_color to (the COLOR_BLACK of globalVars)
	set font_color to (the COLOR_YELLOW of globalVars)
	set output_description to "Moderate"
else if script_output < 151 then
	-- unhealthy for sensitive groups
	set background_color to (the COLOR_BLACK of globalVars)
	set font_color to (the COLOR_ORANGE of globalVars)
	set output_description to "UH for some" -- unhealthy for sensitive groups
else if script_output < 201 then
	-- unhealthy
	set background_color to (the COLOR_BLACK of globalVars)
	set font_color to (the COLOR_RED of globalVars)
	set output_description to "Unhealthy"
else if script_output < 301 then
	-- very unhealthy
	set background_color to (the COLOR_BLACK of globalVars)
	set font_color to (the COLOR_PURPLE of globalVars)
	set output_description to "Very Unhealthy"
else
	-- hazardous
	set background_color to (the COLOR_WHITE of globalVars)
	set font_color to (the COLOR_MAROON of globalVars)
	set output_description to "Hazardous"
end if


log "background_color: " & background_color
log "font_color: " & font_color
log "output_description: " & output_description

-- if you break output into two lines - JSON doesn't work for some reason
return "{\"text\": \"AQI: " & script_output & "\\n" & output_description & "\",
\"background_color\": \"" & background_color & "\",
\"font_color\": \"" & font_color & "\"}"
*)

return "{\"text\": \"" & script_output & "\\nUSD to THB\"}"





