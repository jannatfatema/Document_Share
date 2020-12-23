@echo off
rem -- Check if argument is INSTALL or REMOVE

if not ""%1"" == ""INSTALL"" goto remove

"D:\wordpress\wordpress/mysql\bin\mysqld.exe" --install "wordpressMySQL-2" --defaults-file="D:\wordpress\wordpress/mysql\my.ini"

net start "wordpressMySQL-2" >NUL
goto end

:remove
rem -- STOP SERVICES BEFORE REMOVING

net stop "wordpressMySQL-2" >NUL
"D:\wordpress\wordpress/mysql\bin\mysqld.exe" --remove "wordpressMySQL-2"

:end
exit
