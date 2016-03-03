;--GUIの設定
Gui, Font, s18 Bold, Meiryo
Gui, Add, Text, , ここにタイトルを入力
Gui, Font, ,
Gui, Font, s10
Gui, Add, Text, x5   y60, 連打間隔（ms）:
Gui, Add, Edit, x100 y55 vInterval Number, 20
Gui, Add, Text, x5   y80, F9で実行、F10で停止

;--GUI表示
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