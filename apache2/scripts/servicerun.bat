@echo off
rem START or STOP Apache Service
rem --------------------------------------------------------
rem Check if argument is STOP or START

if not ""%1"" == ""START"" goto stop

net start wordpressApache-1
goto end

:stop

"D:/wordpress/wordpress/apache2\bin\httpd.exe" -n "wordpressApache-1" -k stop

:end
exit
