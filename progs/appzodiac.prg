LPARAMETERS dParam, lParam
DO CASE
CASE EMPTY(dParam) OR !VARTYPE(dParam)$"DT"
	RETURN IIF(EMPTY(lParam),SPACE(10),00)
CASE MONTH(dParam)*100+DAY(dParam)>=1222 OR MONTH(dParam)*100+DAY(dParam)<=119
	RETURN IIF(EMPTY(lParam),"�������",10)
CASE MONTH(dParam)*100+DAY(dParam)<=218
	RETURN IIF(EMPTY(lParam),"�������",11)
CASE MONTH(dParam)*100+DAY(dParam)<=320
	RETURN IIF(EMPTY(lParam),"����",12)
CASE MONTH(dParam)*100+DAY(dParam)<=419
	RETURN IIF(EMPTY(lParam),"����",01)
CASE MONTH(dParam)*100+DAY(dParam)<=520
	RETURN IIF(EMPTY(lParam),"�����",02)
CASE MONTH(dParam)*100+DAY(dParam)<=620
	RETURN IIF(EMPTY(lParam),"��������",03)
CASE MONTH(dParam)*100+DAY(dParam)<=722
	RETURN IIF(EMPTY(lParam),"���",04)
CASE MONTH(dParam)*100+DAY(dParam)<=822
	RETURN IIF(EMPTY(lParam),"���",05)
CASE MONTH(dParam)*100+DAY(dParam)<=922
	RETURN IIF(EMPTY(lParam),"����",06)
CASE MONTH(dParam)*100+DAY(dParam)<=1022
	RETURN IIF(EMPTY(lParam),"����",07)
CASE MONTH(dParam)*100+DAY(dParam)<=1121
	RETURN IIF(EMPTY(lParam),"��������",08)
OTHERWISE
*!*	CASE MONTH(dParam)*100+DAY(dParam)<=1221
	RETURN IIF(EMPTY(lParam),"�������",09)
ENDCASE
