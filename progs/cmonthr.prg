LPARAMETERS dParam, lParam
LOCAL nReturn
STORE IIF(VARTYPE(dParam)$"DT", MONTH(IIF(EMPTY(dParam),DATE(),dParam)), IIF(VARTYPE(dParam)="N" AND BETWEEN(dParam,1,12),dParam,MONTH(DATE()))) TO nReturn
IF EMPTY(m.lParam)
	RETURN IIF(nReturn=1, [������], IIF(nReturn=2, [�������], IIF(nReturn=3, [����], IIF(nReturn=4, [������], IIF(nReturn=5, [���], IIF(nReturn=6, [����], IIF(nReturn=7, [����], IIF(nReturn=8, [������], IIF(nReturn=9, [��������], IIF(nReturn=10, [�������], IIF(nReturn=11, [������], [�������])))))))))))
ENDIF
RETURN IIF(nReturn=1, [������], IIF(nReturn=2, [�������], IIF(nReturn=3, [�����], IIF(nReturn=4, [������], IIF(nReturn=5, [���], IIF(nReturn=6, [����], IIF(nReturn=7, [����], IIF(nReturn=8, [�������], IIF(nReturn=9, [��������], IIF(nReturn=10, [�������], IIF(nReturn=11, [������], [�������])))))))))))
