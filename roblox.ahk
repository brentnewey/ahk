#MaxThreadsPerHotkey 3

SetKeyDelay, -1, 110

; #IfWinActive Roblox

XButton2::
Toggle := !Toggle
Loop
{
	If (!Toggle)
		Break
	Send, {Up}
	Sleep 10000
	Send, {Down}
	Sleep 10000
}
Return

XButton1::
Toggle2 := !Toggle2
Loop
{
	If (!Toggle2)
		Break
	Click
	Sleep 100
}
Return
