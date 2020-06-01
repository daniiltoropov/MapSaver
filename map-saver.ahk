Right() {
	Sleep, 2000
	MouseMove, 0, 200
	Sleep, 2000
	MouseClickDrag, Left, 1920, 200, 0, 200, 5
	Sleep, 2000
	Send, {PrintScreen}
	Sleep, 2000
}

Left() {
	Sleep, 2000
	MouseMove, 0, 200
	Sleep, 2000
	MouseClickDrag, Left, 0, 200, 1920, 200, 5
	Sleep, 2000
	Send, {PrintScreen}
	Sleep, 2000
}

Up() {
	Sleep, 2000
	MouseMove, 200, 0
	Sleep, 2000
	MouseClickDrag, Left, 200, 0, 200, 1080, 5
	Sleep, 2000
	Send, {PrintScreen}
	Sleep, 2000
}

Down() {
	MouseMove, 200, 0
	Sleep, 2000
	MouseClickDrag, Left, 200, 1080, 200, 0, 5
	Sleep, 2000
	MouseMove, 0, 0, 5
	Sleep, 2000
	MouseMove, 200, 200, 5
	Sleep, 2000
	Send, {PrintScreen}
	Sleep, 2000
}

Switch() {
	Sleep, 2000
	Send, {ALT DOWN}{TAB}{ALT UP}
	Sleep, 2000
}

SwitchPaste() {
	Sleep, 2000
	Send, {ALT DOWN}{TAB}{ALT UP}
	Sleep, 2000
	MouseMove, 500, 700
	Sleep, 2000
	Send, ^v
	Sleep, 2000
}

#z:: ; Win+Z

	SetKeyDelay 30,50 ; Sets timer between key presses so Alt+Tab works

	Loop, 1 { ; 1 tall

		Loop, 1 { ; 1 wide
			Right()
			SwitchPaste()
			Switch()
		}

			Sleep, 2000

			Down()
			SwitchPaste()
			Switch()

			Sleep, 2000


		Loop, 1 { ; 1 wide
			Left()
			SwitchPaste()
			Switch()
		}

			Sleep, 2000

			Down()
			SwitchPaste()
			Switch()

			Sleep, 2000

	}

	ExitApp

return

Escape:: ; Force end script early
	ExitApp
Return
