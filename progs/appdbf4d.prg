*!*	������� ����������� ������� ��������� ������� � ��������
LPARAMETERS uParam, cParam
STORE IIF(EMPTY(cParam), ALIAS(), UPPER(cParam)) TO cParam
DO CASE
CASE EMPTY(m.cParam)
	RETURN .F.
CASE EMPTY(m.uParam)	&& ������
	RETURN !EMPTY(ASCAN(_Screen.aDBF, m.cParam))
CASE m.uParam=1 AND !EMPTY(ASCAN(_Screen.aDBF, m.cParam))	&& ������ ����� .F. (��������)
	STORE [] TO _Screen.aDBF(ASCAN(_Screen.aDBF, m.cParam))
CASE m.uParam=2 AND EMPTY(ASCAN(_Screen.aDBF, m.cParam))		&& ������ ALIAS .T.
	LOCAL yy
	uParam=ALEN(_Screen.aDBF)
	FOR m.yy=1 TO m.uParam
		IF EMPTY(_Screen.aDBF(yy))
			STORE m.cParam TO _Screen.aDBF(m.yy)
			EXIT
		ENDIF
	ENDFOR
ENDCASE
