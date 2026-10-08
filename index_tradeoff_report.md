idx_fat_covering chứa sensor_id, recorded_at, temperature, humidity và status nên truy vấn dashboard có thể lấy dữ liệu trực tiếp từ index mà không cần đọc lại bảng.
nhưng bảng SensorLogs có lượng insert rất lớn, mỗi khi thêm dữ liệu Mysql cũng phải cập nhật index. index càng nhiều cột thì càng tốn dung lượng và việc ghi dữ liệu cũng nặng hơn.
trong truy vấn dashboard, phần lọc chỉ dùng sensor_id và recorded_at nên có thể bỏ temperature, humidity và status khỏi index.
index mới idx_lean_search(sensor_id, recorded_at) nhỏ hơn và vẫn giúp Mysql lọc dữ liệu nhanh. sau đó Mysql mới đọc bảng chính để lấy temperature, humidity và status.
như vậy tốc độ select có thể chậm hơn một chút vì không còn covering index, nhưng đổi lại dung lượng index giảm và insert sẽ nhẹ hơn.
có thể kiểm tra Index_length trước và sau bằng SHOW TABLE STATUS LIKE 'SensorLogs'. kết quả EXPLAIN sau khi đổi index vẫn phải nhận idx_lean_search.