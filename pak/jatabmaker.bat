@echo off

set tabfname=ja_JHSDF_factory.tab

if exist %tabfname% echo �������݃t�@�C�� %tabfname% �����łɑ��݂��Ă��܂��B�����t�@�C�����폜����
SET /P ANSWER="���{�ꉻ�t�@�C�����������s���܂��B��낵���ł��� (Y/N)�H"

if /i {%ANSWER%}=={y} (goto :yes)
if /i {%ANSWER%}=={yes} (goto :yes)

EXIT

:yes
del text\ja_all.tab
for /f "usebackq tokens=2 delims=.," %%i IN (`dir *.pak /b`) DO (
echo %%i>> %tabfname%
echo; >> %tabfname%
)
