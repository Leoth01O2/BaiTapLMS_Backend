trong quy trình trả xe có bước kiểm tra tình trạng xe, nếu xe bị hỏng thì khách phải trả thêm chi phí sửa chữa. vì vậy damage_fee cần có trong bảng Rentals để lưu số tiền này.
nếu không có damage_fee thì database chỉ lưu được việc khách đã trả xe chứ không biết khách phải bồi thường bao nhiêu. lúc tính tiền hoàn lại cũng sẽ bị sai

tiền hoàn lại được tính theo:
security_deposit-late_fee-damage_fee
ví dụ khách cọc 10000000, không bị phạt trễ nhưng làm vỡ đèn pha mất 2000000 thì số tiền hoàn lại là 8000000.
ngoài ra bảng Inspections được tách riêng để lưu thông tin kiểm tra xe như ngày kiểm tra, lỗi của xe và người kiểm tra.