@echo off 
call ..\wenda\envirment.bat
echo %WINPYDIR%\Lib\site-packages
xcopy bins\olefile-0.46.dist-info\* %WINPYDIR%\Lib\site-packages\olefile-0.46.dist-info\* /y
xcopy bins\olefile\* %WINPYDIR%\Lib\site-packages\olefile\* /y
xcopy bins\nltk_data\* %WINPYDIR%\nltk_data\* /y /s
python.exe -m pip install -r ..\wenda\requirements\requirements.txt -i https://mirrors.aliyun.com/pypi/simple
pause