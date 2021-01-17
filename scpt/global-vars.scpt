-- since this is being read by other files. we must use property format
-- use this to load into script
-- set globalVars to (load script "/Users/vinceluk/Dropbox/projects/btt/scpt/global-vars.scpt")
-- use this to access variable
-- set variable to (the COLOR_WHITE of globalVars)


property COLOR_WHITE : "255, 255, 255, 255"
property COLOR_BLACK : "0, 0, 0, 255"
property COLOR_GREEN : "0, 228, 0, 255"
property COLOR_YELLOW : "255,255,0, 255"
property COLOR_ORANGE : "255, 159, 40, 255"
-- property COLOR_ORANGE : "255, 153, 51, 255"
property COLOR_RED : "255, 102, 102, 255"
-- property COLOR_RED : "252, 3, 3, 255"
property COLOR_PURPLE : "255, 0, 255, 255"
property COLOR_MAROON : "204, 0, 102, 255"
property COLOR_GREY : "190, 190, 190, 255"

-- TODO: might need to double escapte this path
property home_path : POSIX path of (path to home folder as string)
property ICON_PATH : home_path & "\\/Dropbox\\/projects\\/btt\\/icons\\/"


