1\. Trạng thái lịch hẹn chỉ có 2 giá trị thay vì 5

Thiết kế cũ dùng cột is\_active kiểu boolean, chỉ phân biệt được còn hiệu lực hoặc không còn hiệu lực. Trong khi đó quy trình thực tế có 5 trạng thái khác nhau: PENDING, CONFIRMED, CHECKED\_IN, COMPLETED, CANCELLED. Với is\_active, hệ thống không thể phân biệt một lịch hẹn đang chờ duyệt với một lịch hẹn đã khám xong, cả hai đều chỉ ghi là true. Đây là lý do chính khiến các tính năng liên quan đến trạng thái không hoạt động đúng.



2\. Không có chỗ lưu tiền cọc và phí phạt

bảng appointments cũ không có cột nào lưu số tiền bệnh nhân đã cọc, cũng không có cột lưu phí phạt khi hủy lịch. Khi nghiệp vụ yêu cầu tính phạt trừ vào tiền cọc lúc hủy, hệ thống không có dữ liệu gốc để tính, nên tính năng phạt tiền cọc báo lỗi ngay từ bước lưu dữ liệu đầu vào.



3\. Thiếu bảng lưu đơn thuốc

Toàn bộ thiết kế cũ không có bảng prescriptions. Khi bác sĩ khám xong và cần kê đơn, không có nơi nào trong cơ sở dữ liệu để lưu chi tiết thuốc, liều lượng, ngày kê đơn. Đây là lỗ hổng nghiêm trọng vì nó chặn đứng hoàn toàn một bước quan trọng trong quy trình khám bệnh.



Ba điểm cho thấy thiết kế cũ chỉ đáp ứng được việc lưu thông tin cơ bản của bệnh nhân và lịch hẹn, chưa theo kịp các bước nghiệp vụ mà BA đã mô tả trong Activity diagram.

