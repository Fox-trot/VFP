LPARAMETERS cParam, lParam
*!*	cParam - ��� ���������� �����
*!*	lParam =.T. - ������ � ������� Windows(R)
ON ERROR cParam=[]
IF EMPTY(m.lParam)
	ERASE (m.cParam)
ELSE
	ERASE (m.cParam) RECYCLE
ENDIF
DO proc_error
RETURN !FILE(m.cParam)
