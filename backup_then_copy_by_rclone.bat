@echo off
sqlcmd -S .\SQLEXPRESS -i "C:\Users\PC\Documents\scriptbackupdb.sql" -o "C:\Users\PC\Documents\Logs\backup_log.txt"
"C:\Users\PC\Documents\rclonebackupexportlog.bat"
