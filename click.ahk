;--GUI‚Ìİ’è
Gui, Add, Text, ,Hello
Gui, Add, Edit, vInterval Number, 20 

;--•Ï”‚Ìİ’è
GuiShow = 1

Gui, show
While 1 {
	if(GuiShow == 0) {
		GuiShow = 1;
		Gui, show
	}
	
	If GetKeyState("F9", "P") {
		GuiShow = 0
		Gui, submit, Interval
		while !GetKeyState("F10", "P") {
			click, 1
			Sleep, %Interval%	
		}
	}
}

Return