# references:
# https://stackoverflow.com/questions/2892622/open-url-in-new-safari-tab-with-applescriptdoesnt-already-ex
# https://stackoverflow.com/questions/7221087/applescript-to-get-the-url-from-safari
# focus tab: https://stackoverflow.com/questions/39037588/applescript-search-safari-tab-and-open-tab

-- takes in 2 arguments: openUrl and domain
on run argv

	set waitTime to 5
	set foundUrl to false


	set openUrl to item 1 of argv
	set domain to item 2 of argv
	-- default value of tabIndex - 0 mean at the end
	set tabIndex to 0
	-- optional, should be 1 or 2
	if length of argv > 2 then
		set tabIndex to item 3 of argv as number
	end if

	log "openUrl: " & openUrl
	log "domain: " & domain
	log "tabIndex: " & tabIndex

	tell application "Safari"
		activate

		log "before looping through windows"
		repeat with w in windows
			log w
			set i to 1
			repeat with t in tabs of w
				log t
				set theURL to URL of t -- for some reason if URL of t start with startWithUrl doesn't work
				log theURL
				if theURL contains domain then
					log "found tab"
					tell w to set current tab to t -- focus tab with URL
					set foundUrl to true
					exit repeat
					-- return
				end if
			end repeat
		end repeat
		log foundUrl

		# if we didn't find the URL then open a new tab and focus on new tab
		if foundUrl is false then
			set newTab to make new tab in window 1
			set the URL of newTab to openUrl
			# set current tab to last tab
			tell window 1 to set current tab to newTab
		end if

		-- activate window 1


	end tell

	(*
-- fill out username
if username is not equal to "" then

	delay waitTime

	tell application "System Events"
		keystroke username
	end tell
end if
*)

end run

