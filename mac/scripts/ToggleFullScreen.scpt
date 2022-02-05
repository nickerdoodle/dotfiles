
try
	tell application "System Events"
		tell (first application process whose frontmost is true)
			tell (first window whose subrole is "AXStandardWindow")

				set fullScreen to value of attribute "AXFullScreen"

				if fullScreen = false then
					set value of attribute "AXFullScreen" to true
				else
					set value of attribute "AXFullScreen" to false
				end if

			end tell
		end tell
	end tell

on error e number n

end try
