#InstallMouseHook

;--GUI�̐ݒ�
Gui, Font, s18 Bold, Meiryo
Gui, Add, Text, , �����Ƀ^�C�g�������
Gui, Font, ,
Gui, Font, s10
Gui, Add, Text, x5   y60, �A�ŊԊu�ims�j:
Gui, Add, Edit, x100 y55 vInterval Number, 20
Gui, Add, Text, x5   y80, F9�Ŏ��s�AF10�Œ�~

;--GUI�\��
Gui, show

Flag_F9 := false
Flag_F11 := false

#If !Flag_F9
	F9::
	Flag_F9 := true
	MouseGetPos, start_x, start_y
	Gui, Submit, NoHide
	while Flag_F9 {
		MouseGetPos, now_x, now_y
		If Flag_F11 {
			MouseMove, start_x, start_y, 0
		}
		click
		sleep, Interval
	}
return

#If Flag_F9
	F10::
	Flag_F9 := false
	
	F11::
	Flag_F11 := true
return

#If
#If Flag_F11
	F11::
	Flag_F11 := false
return
#If