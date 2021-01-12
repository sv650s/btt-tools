set timeString to (do shell script "echo `TZ=America/Los_Angeles date '+%H:%M'`")
set dateString to (do shell script "echo `TZ=America/Los_Angeles date '+%-m/%-d'`")


return "{\"text\": \"" & timeString & "\\n" & dateString & "\" }"

