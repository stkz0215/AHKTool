;--GUIの設定
Gui, Add, Text, ,Hello
Gui, Add, Edit, vInterval Number, 20 

;--変数の設定
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