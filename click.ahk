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