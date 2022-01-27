;; Dungeon Defenders -- Auto G Redux
;; Made by Roxio

;; REQUIREMENTS:
;; Windowed mode and the host of the game.

;; USAGE: 
;; ALT + G to ready all local characters.

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#MaxHotkeysPerInterval 20
#SingleInstance Force
#Persistent ;Allows use of global variables instead of just hotkeys
SendMode Input  ;Input|Play|Event|InputThenPlay, ;Faster and more reliable compared to SendEvent
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#IfWinActive, Dungeon Defenders ;Disables hotkeys when the game is minimized or isn't running. This doesn't terminate the script.
Menu, tray, Tip, DunDef - Auto G Redux


CoordMode, ToolTip, Screen

SetKeyDelay, 0, 10, Play

If (A_AhkVersion <= "1.1.23")
{
	msgbox, You need AutoHotkey v1.1.23 or later to run this script. `n`nPlease go to https://autohotkey.com/ and download a recent version.
	exit
}

End::
ExitApp
return

/* You can customize the hotkeys to your liking using the following
	! ALT, ^ CTRL, + SHIFT, # WIN
	<! (< left key, > right key)
	& means combine keys
	* means any ALT/CTRL/SHIFT
	~ means pass input through
	$ means can send itself without recursion
	& means combine keys
	Up means fired on release
	
	Example Hotkey: 
	<!#n Up:: ; call when n is released and left alt is down
	return
*/

AutoG()
{

	SendInput, {F2}{G}{F3}{G}
}

AutoG2()
{	
	Sleep, 1000
	SendInput, {F3}{G}{F2}{G}{F4}{G}
}

AutoG3()
{
	Sleep, 1000
	SendInput, {F4}{G}{F3}{G}{F2}{G}{F5}{G}
}
!F3::
AutoG()
return

!F4::
AutoG2()
return

!F5::
AutoG3()
return