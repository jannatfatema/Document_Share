@echo off
"D:\wordpress\wordpress/mysql\bin\mysql.exe" --defaults-file="D:\wordpress\wordpress/mysql\my.ini" -u root -e "DELETE FROM mysql.user WHERE User='';"
"D:\wordpress\wordpress/mysql\bin\mysql.exe" --defaults-file="D:\wordpress\wordpress/mysql\my.ini" -u root -e "CREATE USER 'root'@'127.0.0.1' IDENTIFIED BY '%1';"
"D:\wordpress\wordpress/mysql\bin\mysql.exe" --defaults-file="D:\wordpress\wordpress/mysql\my.ini" -u root -e "GRANT ALL PRIVILEGES ON *.* TO 'root'@'127.0.0.1' WITH GRANT OPTION;"
"D:\wordpress\wordpress/mysql\bin\mysql.exe" --defaults-file="D:\wordpress\wordpress/mysql\my.ini" -u root -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '%1';"
