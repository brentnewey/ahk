#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
global SLEEP := 100

; #IfWinActive CavesOfQud

EquipItem(item, dig)
{
	Send i
	Sleep % SLEEP
	Send `,
	Sleep % SLEEP
	Send %item%
	Sleep % SLEEP
	Send {Down}
	Sleep % SLEEP
	Send {Space}
	Sleep % SLEEP
	Send {Down}
	Sleep % SLEEP
	Send {Space}
	Sleep % SLEEP
	Send e
	Sleep % SLEEP
	Send {Space}
	Sleep % SLEEP
	if(dig)
	{
		Send {Space}
		Sleep % SLEEP
	}
	Send {Esc}	
	Sleep % SLEEP	
	
}

^6::
EquipItem("jackhammer", true)
Return

^7::
EquipItem("lacquered carbide long sword", false)
EquipItem("freezing steel battle axe", false)
EquipItem("worn burnoose", false)
Return