LPARAMETERS nParam, uParam
LOCAL lReturn
DO CASE
*!*	CASE IIF(VARTYPE(m.uParam)=[O], EMPTY(m.nParam), EMPTY(m.uParam))
CASE EMPTY(m.uParam)
CASE nParam=1
	nParam = GETPICT()
	DO CASE
	CASE EMPTY(m.nParam)
	CASE m.nParam == m.uParam
		MESSAGEBOX("��� �������. ��������� ������� �����",16,"�������� �����", _Screen.MBTimeout)
	OTHERWISE
		CLEAR RESOURCES
		AppErase(m.uParam, .T.)
*!*			COPY FILE (m.nParam) TO (m.uParam)
		lReturn=STRTOFILE(FILETOSTR(m.nParam), m.uParam)>0
	ENDCASE
*!*	CASE m.nParam=2 AND FILE(m.uParam) AND MESSAGEBOX("������� ����", 289, "������������� ��������")=1
*!*		CLEAR RESOURCES &&(m.uParam)
*!*		lReturn=AppErase(m.uParam, .T.) AND !FILE(m.uParam)
*!*		IF EMPTY(m.lReturn)
*!*			MESSAGEBOX("��� �������. ��������� ������� �����",16,"�������� �����")
*!*		ENDIF
CASE m.nParam=2 AND FILE(m.uParam)
	lReturn=MESSAGEBOX("������� ����", 289, "������������� ��������", _Screen.MBTimeout)=1
CASE m.nParam=4 AND IIF(m.uParam=user.iuser, .T., SEEK(m.uParam, "user", "abs"))
	LOCAL cBackup
	nParam = vfpclubavatar(TRANSFORM(m.uParam))
	IF FILE(m.nParam)
		cBackup = FILETOSTR(m.nParam)
		AppErase(m.nParam)
	ENDIF
	DO CASE
	CASE vfpclubprofile(user.iuser, user.nuser,,!EMPTY(user.duser))
		lReturn=.T.
	CASE !EMPTY(m.cBackup)
		=STRTOFILE(m.cBackup, m.nParam)
	ENDCASE
CASE nParam=5 AND FILE(m.uParam)
	nParam = PUTFILE("&��� �����", [], "png")
	DO CASE
	CASE EMPTY(m.nParam)
*!*		CASE FILE(m.nParam)
*!*			MESSAGEBOX("���� ��� ����������", 16, "��������� ��� ..", _Screen.MBTimeout)
	OTHERWISE
*!*			COPY FILE (m.uParam) TO (m.nParam)
		lReturn=STRTOFILE(FILETOSTR(m.uParam), m.nParam)>0
	ENDCASE
ENDCASE
RETURN m.lReturn
