@echo off

set tabfname=ja_JHSDF_factory.tab

if exist %tabfname% echo 書き込みファイル %tabfname% がすでに存在しています。既存ファイルを削除して
SET /P ANSWER="日本語化ファイル生成を実行します。よろしいですか (Y/N)？"

if /i {%ANSWER%}=={y} (goto :yes)
if /i {%ANSWER%}=={yes} (goto :yes)

EXIT

:yes
del text\ja_all.tab
for /f "usebackq tokens=2 delims=.," %%i IN (`dir *.pak /b`) DO (
echo %%i>> %tabfname%
echo; >> %tabfname%
)
