echo off
set CUR_YYYY=%date:~10,4%
set CUR_MM=%date:~4,2%
set CUR_DD=%date:~7,2%
set CUR_HH=%time:~0,2%
if %CUR_HH% lss 10 (set CUR_HH=0%time:~1,1%)

set CUR_NN=%time:~3,2%
set CUR_SS=%time:~6,2%
set CUR_MS=%time:~9,2%

set SUBFILENAME=%CUR_YYYY%%CUR_MM%%CUR_DD%-%CUR_HH%%CUR_NN%%CUR_SS%

c:\rclone\rclone copy c:\backup gdrive:backup/ -v --progress --drive-server-side-across-configs --stats=1s --stats-one-line -vvP --checkers=256 --transfers=256 --drive-pacer-min-sleep=1ms --drive-pacer-burst=5000 --check-first --create-empty-src-dirs --progress --drive-skip-shortcuts --ignore-checksum >> c:\rclone\log\backuplog_%SUBFILENAME%.txt
pause