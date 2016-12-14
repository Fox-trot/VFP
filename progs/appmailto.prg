LPARAMETERS cMail, cSubject
IF !EMPTY(m.cMail)
	LOCAL lnRes, nWinHandle, cOperation, cFileName, cParameters, cDirectory, nShowWindow
	DECLARE INTEGER ShellExecute IN SHELL32.DLL INTEGER nWinHandle, STRING cOperation, STRING cFileName, STRING cParameters, STRING cDirectory, INTEGER nShowWindow
	WITH _Screen
		lnRes = ShellExecute(0, "Open", "mailto:"+m.cMail+"?subject="+IIF(EMPTY(m.cSubject), .CAPTION, ALLTRIM(m.cSubject)), "", ADDBS(SYS(5)), 1)
		IF m.lnRes < 32
			DO CASE
			CASE m.lnRes = 2
				MESSAGEBOX ("�������� ���������� ��� ����� (URL)", 16, .CAPTION, .MBTimeout)
			CASE m.lnRes = 31
				MESSAGEBOX ("��� ��������� ���������", 16, .CAPTION, .MBTimeout)
			CASE m.lnRes = 29
				MESSAGEBOX ("�� ������� ��������� ���������", 16, .CAPTION, .MBTimeout)
			CASE m.lnRes = 30
				MESSAGEBOX ("��������� � ������ ������ ����������", 16, .CAPTION, .MBTimeout)
			ENDCASE
		ENDIF
	ENDWITH
	CLEAR DLLS
ENDIF
