position: absolute làm phần tử thoát khỏi luồng bố cục bình thường nên phần tử cha có thể không giữ đúng chiều cao nội dung
khi màn hình thay đổi kích thước các giá trị top left width height cố định dễ làm ảnh chồng lên nhau hoặc che nội dung bên dưới
với giao diện responsive cách này khó bảo trì vì phải sửa nhiều kích thước thủ công
CSS Grid phù hợp hơn cho Mosaic Gallery vì nó xử lý bố cục theo cả hàng và cột
ảnh chính có thể chiếm 2 hàng bằng grid-row: span 2 còn các ảnh nhỏ tự nằm ở cột bên cạnh
khi xuống mobile chỉ cần đổi grid về 1 cột bằng media query
Grid giữ các phần tử trong luồng bố cục nên phần cha vẫn có chiều cao đúng và nội dung phía dưới không bị đè