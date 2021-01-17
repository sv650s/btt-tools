

(*
Calls python script to get news headline for BTT to display

Uses the following variables:
	VLNewsCounter - keeps track of where we are - it is used to mod with list so we know which article to display. we will increment this to display different articles
	VLNewSourceURL - URL BTT will open when clicking article
	VLNewSourceDomain - Domain BTT will look for so we don't open a bunch of tabs

*)
-- constants
set DEBUG to false
-- max number of words in first line
set MAX_FIRST_LINE_WORDS to 7
-- maximum number of words we will put into output
set MAX_OUTPUT_WORDS to 25

-- return multi-doesn't work with icons right now
set ICON_NYT to "NYT3.png"
set ICON_SFG to "SFgate.png"
set ICON_BBC to "BBC.png"
set ICON_BKK to "BKKpost2.ico"
set ICON_NPR to "NPR2.png"
set ICON_TC to "TC.png"
set ICON_YHOO to "YHOO.ico"


-- load functions
tell application "Finder" to set _myPath to container of (path to me) as text
set gf_path to _myPath & "global-functions.scpt"
set _globalFns to load script (alias (gf_path))

-- read global variables
set _globalVars to load script (alias (_myPath & "global-vars.scpt"))
-- old way of loading
-- set home_path to POSIX path of (path to home folder as string)
-- set _globalVars to (load script home_path & "/Dropbox/projects/btt/scpt/global-vars.scpt")

tell application "BetterTouchTool"


	-- get counter variable from BTT
	set newsCounter to get_string_variable "VLNewsCounter"
	if newsCounter is missing value then
		log "newsCounter missing. Creating..."
		set newsCounter to "1"
	end if

	log "newsCounter: " & newsCounter



	if DEBUG is true then
		-- set scriptOutput to "YHOO|Rudy Giuliani says pro-Trump rioters attacking US Capitol building are ‘on the right side of history’||news.yahoo.com|https://news.yahoo.com/rudy-giuliani-says-pro-trump-205320262.html"
		-- set scriptOutput to "TC|Too Good To Go raises $31 million to fight food waste|Too Good To Go, the startup that lets you buy food right before it goes to waste, is raising a $31.1 million round. blisce/ is leading the round and investing $15.4 million as part of today’s round. Existing investors and employees are also participating. While the company has been around for a while, this is [&#8230;]|techcrunch.com|https://techcrunch.com/2021/01/07/too-good-to-go-raises-31-million-to-fight-food-waste/#respond"
		-- NPR
		-- set scriptOutput to "NPR|Why U.S. Vaccinations Started Slow And What We Know About The New Coronavirus Variant|Initially, U.S. officials predicted that as many as 20 million Americans would be fully vaccinated before the end of 2020.  And while that many vaccine doses were distributed, only a fraction of them have been administered. The federal government has given states control over distribution plans which has led to different systems with differing levels of success. In one Florida county, Julie Glenn of member station WGCU reports on the haphazard vaccine rollout that has led elderly residents to camp out in tents to get their first shot.As vaccinations lag behind schedule, a new, more contagious variant of the coronavirus is spreading in many countries, including the U.S. The new variant isn't thought to be more deadly, and scientists believe the vaccines currently being administered will work against it. Additional good news is that masks and social distancing will still slow the spread of the new variant.Additional reporting this episode from NPR's Allison Aubrey, who's reported on the slow start to vaccinations, and from NPR's Michaeleen Doucleff, who's reported on the new coronavirus variant. Reporting on the vaccine rollout at the state level came from Will Stone in Seattle, Nashville Public Radio's Blake Farmer, and WBUR's Martha Bebinger.In participating regions, you'll also hear a local news segment that will help you make sense of what's going on in your community.Email us at considerthis@npr.org.|npr.org|https://www.npr.org/2021/01/04/953286492/why-u-s-vaccinations-started-slow-and-what-we-know-about-the-new-coronavirus-var"
		set scriptOutput to "NPR|Trump Supporters Storm U.S. Capitol, Halting Final Count Of Biden Votes|A joint session of Congress to formally affirm the results of the 2020 presidential election was just getting started on Wednesday when a group of Republicans from the House and the Senate went on record objecting to election results in swing states.The first objection triggered a debate period with each chamber having hours to deliberate. But those sessions were halted as a mob of Pro-Trump extremists stormed the Capitol grounds and sent the entire complex into a lockdown.For more on what happened in Washington, D.C., NPR's congressional correspondent Sue Davis, spoke to All Things Considered hosts Ailsa Chang and Mary Louise Kelly. The bottom line: Joe Biden will be inaugurated in 14 days. And it looks like he'll take office with a Democratic-controlled Senate.Rev. Raphael Warnock spoke with NPR's Noel King after defeating Republican Sen. Kelly Loeffler in one of Georgia's runoff elections, according to the Associated Press. Democrat Jon Ossoff defeated Republican Sen. David Perdue in the second Georgia Senate runoff, according to an AP race call.It looks like what helped put the Democrats over the top was Black voter turnout. LaTosha Brown is co-founder of Black Voters Matter, a Georgia group that helped lead get-out-the-vote efforts there. She spoke with NPR about where the fight goes next.In participating regions, you'll also hear a local news segment that will help you make sense of what's going on in your community.Email us at considerthis@npr.org.|npr.org|https://www.npr.org/2021/01/04/953286580/pro-trump-extremists-storm-u-s-capitol-halting-final-count-of-biden-votes"
		-- no summary
		-- set scriptOutput to "YHOO|Capitol riot was false-flag operation by leftists, Trump backers claim, with no basis||news.yahoo.com|https://news.yahoo.com/capitol-riot-was-falseflag-operation-by-leftists-trump-backers-claim-with-no-basis-051703320.html"
	else
		set scriptOutput to (do shell script "source ~/.bash_profile && cd ~/Dropbox/projects/btt && conda run -n btt python get_news_articles.py --article_num " & newsCounter)
	end if

	log "scriptOutput: " & scriptOutput


	set scriptOutputLines to _globalFns's splitLine(scriptOutput, "|")
	log "scriptOutputLines length: " & length of scriptOutputLines

	set source to item 1 of scriptOutputLines
	log "source: " & source
	set headline to item 2 of scriptOutputLines
	log "headline: " & headline
	set summary to item 3 of scriptOutputLines
	log "summary: " & summary
	set domain to item 4 of scriptOutputLines
	log "domain: " & domain
	set link to item 5 of scriptOutputLines
	log "link: " & link

	-- truncate summary - some of them can be quite long and BTT shifts things over and looks weird
	set summary to _globalFns's truncateString(summary, MAX_OUTPUT_WORDS)



	if source is "BKK" then
		set icon to ICON_BKK
	else if source is "SFGate" then
		set icon to ICON_SFG
	else if source is "BBC" then
		set icon to ICON_BBC
	else if source is "NYT" then
		set icon to ICON_NYT
	else if source is "NPR" then
		set icon to ICON_NPR
	else if source is "TC" then
		set icon to ICON_TC
	else if source is "YHOO" then
		set icon to ICON_YHOO
	end if


	--set formattedSummary to _globalFns's breakIntoTwoLines(summary, MAX_FIRST_LINE_WORDS)
	if headline is not "" and summary is not "" then
		set formattedSummary to headline & "\\n" & summary
	else if headline is "" then
		set formattedSummary to _globalFns's breakIntoTwoLines(summary, MAX_FIRST_LINE_WORDS)
	else if summary is "" then
		set formattedSummary to _globalFns's breakIntoTwoLines(headline, MAX_FIRST_LINE_WORDS)
	end if

	if DEBUG is true then
		display notification "getting news... "
		set formattedSummary to "DEBUG: " & source & ": " & formattedSummary
	end if

	set jsonOutput to "{\"text\":\"" & formattedSummary & "\",
\"icon_path\":\"" & (the ICON_PATH of _globalVars) & icon & "\"}"

	-- set variables in BTT so button click knows what to open
	set_string_variable "VLNewsCounter" to newsCounter + 1
	set_string_variable "VLNewSourceURL" to link
	set_string_variable "VLNewSourceDomain" to domain
	log "set VLNewsCounter: " & (get_string_variable "VLNewsCounter")
	log "set VLNewSourceURL: " & (get_string_variable "VLNewSourceURL")
	log "set VLNewSourceDomain: " & (get_string_variable "VLNewSourceDomain")



	return jsonOutput


end tell



-- return do shell script "source ~/.bash_profile && cd ~/Dropbox/projects/COVID && conda run -n btt python get_bkkpost_top_story.py --mode all"
(*
this doesn't work
on getBTTStringVariable(varName)

	set bkkpost_article_count to get_string_variable varName as text

	if bkkpost_article_count is missing value then
		log "bkkpost_article_count missing"
		set bkkpost_article_count to "1"
	end if

	return bkkpost_article_count

end getBTTStringVariable
*)



(*
on breakIntoTwoLines(summary, firstLineWordCount)
	log "Formatting summary: " & summary
	set summary_list to my splitLine(summary, " ")
	set new_summary to ""
	set counter to 1
	repeat with aWord in summary_list
		log "aWord: " & aWord
		if counter is 1 then
			set new_summary to aWord
		else if counter is firstLineWordCount + 1 then
			set new_summary to new_summary & "\\n" & aWord
		else
			set new_summary to new_summary & " " & aWord
		end if
		if aWord is not "-" then
			set counter to counter + 1
		end if
	end repeat
	log "new_summary: " & new_summary
	return new_summary
end breakIntoTwoLines


on truncateString(aString, numberOfWords)

	log "Truncating string: " & aString & " to " & numberOfWords & " words "
	set word_list to my splitLine(aString, " ")
	set new_string to ""
	set counter to 1
	repeat with aWord in word_list
		log "aWord: " & aWord
		if counter > numberOfWords then
			exit repeat
		else
			if counter is 1 then
				set new_string to aWord
			else
				set new_string to new_string & " " & aWord
			end if
			set counter to counter + 1
		end if
	end repeat
	log "Truncated string (new_string): " & new_string
	return new_string
end truncateString

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

*)

