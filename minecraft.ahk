#MaxThreadsPerHotkey 3

searchX := 886
searchY := 522
craftX := 1646
craftY := 604
recipeX := 869
recipeY := 597

; #IfWinActive Minecraft* 1.18.1


Shiftclick(x, y)
{
	Send, {Shift down}
	Click, %x%, %y%
	Send, {Shift up}
}

Autocraft(item)
{
	global

	; Search
	Click, %searchX%, %searchY%
	Send, %item%

	; Click Recipe
	Shiftclick(recipeX, recipeY)

	; Craft
	Shiftclick(craftX, craftY)

}

^z::
Toggle := !Toggle
Loop
{
	If (!Toggle)
		Break
	Click
	Sleep 10000
}
Return

XButton1::
Toggle2 := !Toggle2
Loop
{
	If (!Toggle2)
		Break
	Click, right
	Sleep 10
}
Return

1::
Autocraft("Gold Ingot")
Autocraft("Gold Ingot")
Autocraft("Gold Ingot")
Autocraft("Block of Gold")
Return

/*
^i::
MouseGetPos, xpos, ypos 
MsgBox, The cursor is at X%xpos% Y%ypos%.
return

^t::
MsgBox, %craftX%, %craftY%.
return



2::
Autocraft("Slimeball")
Return

3::
Autocraft("Magma Cream")
Return

4::
Autocraft("Magma Block")
Return

5::
Autocraft("Blaze Powder")
Autocraft("Blaze Powder")
Autocraft("Blaze Powder")
Autocraft("Blaze Powder")
Autocraft("Slimeball")
Autocraft("Magma Cream")
Autocraft("Magma Cream")
Autocraft("Magma Cream")
Autocraft("Magma Cream")
Autocraft("Magma Cream")
Autocraft("Magma Cream")
Autocraft("Magma Cream")
Autocraft("Magma Cream")
Autocraft("Magma Block")
Autocraft("Magma Block")
Return
*/