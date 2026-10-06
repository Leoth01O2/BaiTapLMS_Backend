dùng COUNT(o.order_id) vì nó chỉ đếm các giá trị order_id không bị null.
khi dùng left join, khách chưa mua hàng như Charlie vẫn được giữ lại nhưng các cột bên Orders sẽ là null. lúc đó COUNT(o.order_id) sẽ cho kết quả 0.
nếu dùng COUNT(*) thì nó vẫn đếm dòng của Charlie do dòng bên Customers vẫn tồn tại sau left join, nên kết quả có thể thành 1 và bị sai số đơn hàng.
vì vậy trong trường hợp này phải đếm cột bên bảng Orders thay vì đếm toàn bộ dòng.