@echo off

setlocal
:PROMPT
SET /P AREYOUSURE=horus: collect: confirm: are you sure to collect (Y/[N])?
IF /I "%AREYOUSURE%" NEQ "Y" GOTO END

	copy C:\devel\xampp\apache\conf\httpd.conf .\apache
	copy C:\devel\xampp\apache\conf\extra\httpd-vhosts.conf .\apache
	copy C:\devel\xampp\mysql\data\my.ini .\mysql
	copy C:\devel\xampp\php\php.ini .\php
	copy C:\Windows\System32\drivers\etc .\hosts

:END
endlocal

pause
