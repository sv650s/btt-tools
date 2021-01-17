(*
This file contains functions that can be loaded by other scripts

To load (assumes global-functions.scpt is in the same directory of script being executed):
	tell application "Finder" to set _myPath to container of (path to me) as text
	set gf_path to _myPath & "global-functions.scpt"
	set _globalFns to load script (alias (gf_path))



To use function:
	set new_string to _globalFns's splitString(string, delimiter)
*)

(*
Splits a string using delimiter specified

Parameters:
* theString - string to split
* theDelimiter - delimiter used to split string

Return:
* array of split string
*)
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

(*
Breaks a line into 2 with first line having specified number of words

Parameters:
* aString - string to split
* firstLineWordCount - number words to keep in first line

Return:
* new string with '\n' (newline) inserted between firstLineWordCount and firstLineWordCount + 1

*)
on breakIntoTwoLines(aString, firstLineWordCount)
	log "Breaking line into 2: " & aString
	set aString_list to my splitLine(aString, " ")
	set new_string to ""
	set counter to 1
	repeat with aWord in aString_list
		log "aWord: " & aWord
		if counter is 1 then
			set new_string to aWord
		else if counter is firstLineWordCount + 1 then
			set new_string to new_string & "\\n" & aWord
		else
			set new_string to new_string & " " & aWord
		end if
		if aWord is not "-" then
			set counter to counter + 1
		end if
	end repeat
	log "new_string: " & new_string
	return new_string
end breakIntoTwoLines

(*
Truncates a string and only keep numberOfWords

Parameters:
* aString - string to truncate
* numberOfWords - number of words to keep

Return:
* string with only number of words to keep

*)
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
