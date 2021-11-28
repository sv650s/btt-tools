# references:
# https://superuser.com/questions/583560/how-to-open-a-new-tab-in-chrome-using-applescript-only-if-it-doesnt-already-ex
# https://stackoverflow.com/questions/22107418/open-url-and-activate-google-chrome-via-applescript
# https://developer.apple.com/library/archive/documentation/AppleScript/Conceptual/AppleScriptLangGuide/conceptual/ASLR_variables.html
# open tab in specific position: https://apple.stackexchange.com/questions/271702/applescript-how-to-open-a-link-in-google-chrome-in-a-new-adjacent-tab



-- takes in 2 arguments: openUrl and domain
on run argv

	-- turn on/off debugging
	set DEBUG to false
	-- default value of tabIndex - 0 mean at the end
	set tabIndex to 0
	-- optional, should be 1 or 2





	if DEBUG then
		set openUrl to "https://webmail.agoda.com"
		set domain to "webmail.agoda.com"
		set tabIndex to 1
		log "openUrl: " & openUrl
		log "domain: " & domain
		log "tabIndex: " & tabIndex
	else
		set openUrl to item 1 of argv
		set domain to item 2 of argv
		if length of argv > 2 then
			set tabIndex to item 3 of argv as number
		end if
	end if



	tell application "Google Chrome"
		activate
		repeat with w in windows
			set i to 1
			repeat with t in tabs of w
				if URL of t contains domain then
					set active tab index of w to i
					set index of w to 1
					if DEBUG then
						log "found URL"
					end if
					return
				end if
				set i to i + 1
			end repeat
		end repeat

		if tabIndex is 1 then
			-- open at the beginning
			tell front window to make new tab at the beginning with properties {URL:openUrl} -- open a new tab at the beginning
		else if tabIndex is 2 then
			tell front window to make new tab at after (get first tab) with properties {URL:openUrl} -- open a new tab at the 2nd tab
		else
			tell front window to make new tab at after (get last tab) with properties {URL:openUrl} -- open a new tab after the current tab
			-- tell front window to make new tab at after (get active tab) with properties {URL:openUrl} -- open a new tab after the current tab

			-- another way to open URL but it's kind of flakey
			# open location openUrl
		end if

		-- bring window to front
		-- activate
	end tell

end run



