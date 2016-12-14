LPARAMETERS nParam, lParam
#DEFINE mm 60
#DEFINE hh 3600
#DEFINE dd 86400
DO CASE
CASE m.nParam < mm AND EMPTY(m.lParam)
	RETURN TRANSFORM(CEILING(m.nParam)) + " ce�"
CASE m.nParam < mm
	RETURN ""
CASE m.nParam < hh
	RETURN TRANSFORM(INT(nParam/mm)) + " ��� " + apps2c(nParam-INT(nParam/mm)*mm, lParam)
CASE m.nParam < dd
	RETURN TRANSFORM(INT(nParam/hh)) + " ��� " + ALLTRIM(apps2c(nParam-INT(nParam/hh)*hh, lParam))
ENDCASE
RETURN TRANSFORM(INT(nParam/dd)) + " ���� " + ALLTRIM(apps2c(nParam-INT(nParam/dd)*dd, .T.))
