if "%1"=="" echo hello this is update file.
if "%1"=="w" goto :internet
if "%1"=="ww" goto :update
if "%1"=="www" goto :downloadfullversion
goto :eof

versionumberfile 
https://github.com/mr1ay/645vbh4/archive/master.zip

fullversion
https://github.com/mr1ay/963q4v578q346524/archive/master.zip

updateversion
https://github.com/mr1ay/a3w4b235/archive/master.zip










	:internet
		ping www.google.com -n 1 -w 1 > nul && (
							goto :internetopen
							) || (
							goto :internetclose 
							)

		:internetopen
			call mr1ay download https://github.com/mr1ay/2a3435w34j523/archive/master.zip version.zip
			goto end

		:internetclose
			batbox.exe /g 50 1 /c 0x8c /d "internet not found :("
			echo.error>error.mr1ay
			goto :end













	:update
		ping www.google.com -n 1 -w 1 > nul && (
							goto :internetopen1
							) || (
							goto :internetclose1
							)
		:internetclose1
			batbox.exe /g 50 1 /c 0x8c /d "internet not found :("
			echo.error>error.mr1ay
			goto :end

		:internetopen1
			call mr1ay download https://github.com/mr1ay/963q4v578q346524/archive/master.zip update.zip

			7z.exe x update.zip
			rename 963q4v578q346524-master update
			start /min update\yap.bat
			goto :end











	:downloadfullversion
		ping www.google.com -n 1 -w 1 > nul && (
							goto :internetopen2
							) || (
							goto :internetclose2
							)
		:internetclose2
			batbox.exe /g 50 1 /c 0x8c /d "internet not found :("
			echo.error>error.mr1ay
			goto :end

		:internetopen2
			call mr1ay download https://github.com/mr1ay/963q4v578q346524/archive/master.zip fullversion.zip
			7z.exe x fullversion.zip
			rename 963q4v578q346524-master fullversion
			start /min fullversion\yap.bat
:end
exit

