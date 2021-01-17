-- get foreign exchange rate for USD to THB


set DEBUG to false


-- read global variables
tell application "Finder" to set _myPath to container of (path to me) as text
set _globalVars to load script (alias (_myPath & "global-vars.scpt"))


if DEBUG is true then
	set script_output to "31.20"
else
	set script_output to (do shell script "source ~/.bash_profile && cd ~/Dropbox/projects/btt && conda run -n btt python get_exchange_rate.py") as number
end if


if script_output < 31 then
	set font_color to (the COLOR_RED of _globalVars)
else if script_output < 33 then
	set font_color to (the COLOR_YELLOW of _globalVars)
else
	set font_color to (the COLOR_GREEN of _globalVars)
end if



return "{\"text\": \"" & script_output & "\\nUSD to THB\",
\"font_color\": \"" & font_color & "\"}"





