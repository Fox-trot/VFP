LPARAMETERS lLatRus
DECLARE INTEGER ActivateKeyboardLayout IN win32api INTEGER,INTEGER

*!*	������������ �� ���������
*ActivateKeyboardLayout(68748313,0) && �������

*!*	������������ �� ��������
*ActivateKeyboardLayout(67699721,0) && ����������

ActivateKeyboardLayout(IIF(EMPTY(lLatRus), 67699721, 68748313),0)
*!*	CLEAR DLLS
