HPDE Update 2025 – Backup Tool
Máy Windows 10 chạy ứng dụng KT chạy với Microsoft SQL Database Express
Sử dụng windows Task Schedue thiết lập lịch theo nhu cầu để gọi script đầu tiên
[1] [backup_then_copy_by_rclone.bat] 
    Sau khi chạy sẽ gọi lần lượt 2 file tương ứng
[2] [scriptbackupdb.sql]
    Thực hiện sao lưu dữ liệu về thư mục C:\BACKUP Lưu log tại file C:\Users\PC\Documents\Logs\backup_log.txt 
[3] [rclonebackupexportlog.bat] 
    Sử dụng phần mềm rclone để copy dữ liệu từ thư mục C:\Backup vào Google Drive tại thư mục backup
    Lưu log tại thư mục c:\rclone\log\
Kiểm tra lại kết quả ở Google Drive: :)
