IF !POPUP("shortcut")
	DEFINE POPUP shortcut FROM MROW(),MCOL() RELATIVE SHORTCUT
*!*		DEFINE POPUP shortcut FROM MROW(),MCOL() SHORTCUT
	DEFINE BAR _med_cut OF shortcut PROMPT "\<��������" KEY CTRL+X, "Ctrl+�" MESSAGE "�������� ����������� ��������� � ����� ������"
	*!*	&&MESSAGE "�������� ����������� ��������� � ����� ������"
	DEFINE BAR _med_copy OF shortcut PROMPT "\<����������" KEY CTRL+C, "Ctrl+�"
	*!*	&&MESSAGE "����������� ����������� ��������� � ����� ������"
	DEFINE BAR _med_paste OF shortcut PROMPT "�����\<���" KEY CTRL+V, "Ctrl+�"
	*!*	&&MESSAGE "������� �������� �� ������ ������"
	DEFINE BAR 1 OF shortcut PROMPT "\-"
	DEFINE BAR _med_slcta OF shortcut PROMPT "��\<������ ���" KEY CTRL+A, "Ctrl+�"
	*!*	&&MESSAGE "�������� ���� �����"
ENDIF
