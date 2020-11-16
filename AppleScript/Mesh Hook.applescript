use AppleScript version "2.4" -- Yosemite (10.10) or lateruse scripting additionstell application "Finder"	set _files to selection	set _targets to _files	if (count of _files) > 1 then		repeat with _file in _files			repeat with _target in _targets				if _file is not equal to _target then					tell application "Hook"						log POSIX path of (_file as string)						set _src to make bookmark with data (POSIX path of (_file as string))						set _tgt to make bookmark with data (POSIX path of (_target as string))						hook _src and _tgt					end tell				end if			end repeat		end repeat	else		display dialog "2 or more files must be selected"	end ifend tell