\-Prompt 1

Hỏi: Dùng cột is\_active kiểu boolean để theo dõi vòng đời một lịch hẹn có vấn đề gì, nên thay bằng gì.

Trả lời nhận được: Boolean chỉ mang 2 giá trị nên không đủ để biểu diễn một quy trình có nhiều bước chuyển trạng thái. Nên dùng cột status kiểu ENUM hoặc VARCHAR liệt kê đủ các trạng thái, giúp truy vấn theo từng giai đoạn dễ dàng và tránh phải suy luận gián tiếp từ true/false.

Áp dụng: đổi is\_active thành cột status kiểu ENUM với 5 giá trị PENDING, CONFIRMED, CHECKED\_IN, COMPLETED, CANCELLED.



\-Prompt 2

Hỏi: lưu tiền cọc và phí phạt trong Mysql nên dùng FLOAT, DOUBLE hay DECIMAL?.

Trả lời nhận được: FLOAT và DOUBLE lưu theo chuẩn dấu phẩy động nhị phân nên có thể phát sinh sai số nhỏ khi cộng trừ nhiều lần, không phù hợp với số tiền. DECIMAL lưu đúng từng chữ số thập phân, không bị lệch, nên là lựa chọn đúng cho dữ liệu tài chính.

Áp dụng: dùng DECIMAL(10,2) cho cả deposit\_amount và penalty\_fee.



\-Prompt 3

Hỏi:cú pháp thêm cột status kiểu ENUM vào một bảng có sẵn trong Mysql.

Trả lời nhận được: dùng ALTER TABLE tên\_bảng ADD COLUMN status ENUM(...) rồi liệt kê các giá trị trong ngoặc, có thể kèm NOT NULL DEFAULT để quy định giá trị khởi tạo.

Áp dụng: dùng để thêm cột status cho bảng Appointments trong trường hợp không muốn xóa bảng cũ.



\-Prompt 4

Hỏi: cách chặn việc chèn đơn thuốc cho một lịch hẹn chưa ở trạng thái COMPLETED.

Trả lời nhận được: gợi ý dùng Database Trigger loại BEFORE INSERT trên bảng Prescriptions, trong trigger kiểm tra trạng thái của appointment\_id tương ứng, nếu khác COMPLETED thì dùng SIGNAL để chặn thao tác và trả lỗi.

Áp dụng: tham khảo để trả lời phần vấn đáp, chưa triển khai trigger trong file sql chính vì đề bài không yêu cầu bắt buộc.

