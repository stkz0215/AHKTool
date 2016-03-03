;--GUIÇÃê›íË
Gui, Font, s18 Bold, Meiryo
Gui, Add, Text, x100 y100 cBlue, ÇÕÇÎÅ[
Gui, Font, ,
Gui, Font, s10
Gui, Add, Edit, vInterval Number, 10

;--GUIï\é¶
Gui, show

Flag := false
#If !Flag
	F9::
	Flag := true
	Gui, Submit, NoHide
	while Flag {
		click
		sleep, Interval
	}
return

#If Flag
	F10::
	Flag := false
return
#If