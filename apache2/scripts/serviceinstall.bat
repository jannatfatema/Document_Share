@echo off
rem -- Check if argument is INSTALL or REMOVE

if not ""%1"" == ""INSTALL"" goto remove

"D:/wordpress/wordpress/apache2\bin\httpd.exe" -k install -n "wordpressApache-1" -f "D:/wordpress/wordpress/apache2\conf\httpd.conf"

net start wordpressApache-1 >NUL
goto end

:remove
rem -- STOP SERVICE BEFORE REMOVING

net stop wordpressApache-1 >NUL
"D:/wordpress/wordpress/apache2\bin\httpd.exe" -k uninstall -n "wordpressApache-1"

:end
exit
