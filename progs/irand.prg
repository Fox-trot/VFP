* ---------------------------------*   ���������� ��������� �������������� ����� �*   ��������� �� i �� j ��� �� 1 �� 9999* ---------------------------------LPARAMETERS iiii, jjjj*!*	IF EMPTY(iiii) AND EMPTY(jjjj)*!*		STORE 1 TO iiii*!*		STORE MIN(YEAR(DATE())+MOD(DISKSPACE(),1000),9999) TO jjjj*!*	ENDIF*!*	STORE INT((jjjj-iiii+1)*RAND()+iiii) TO iiii*!*	RETURN iiiiRETURN IIF(EMPTY(jjjj) AND EMPTY(iiii), INT(MIN(YEAR(DATE())+MOD(DISKSPACE(),1000),9999)*RAND()+1), INT((jjjj-iiii+1)*RAND()+iiii))