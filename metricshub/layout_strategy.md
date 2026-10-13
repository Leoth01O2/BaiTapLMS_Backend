Navbar là bố cục một chiều nên dùng Flexbox để các phần tử tự co giãn theo nội dung, dễ căn hàng và cho phép flex-wrap khi màn hình nhỏ.
Dashboard là bố cục hai chiều nên dùng CSS Grid. Grid phù hợp khi widget cần chiếm nhiều hàng hoặc nhiều cột bằng grid-column và grid-row, đồng thời giúp bỏ các div column lồng nhau.
Pricing chỉ cần 3 cột bằng nhau trên desktop và xếp dọc trên mobile nên dùng Bootstrap với row và col-12 col-md-4. Cách này ngắn gọn và không cần tự viết thêm media query cho phần bảng giá.
Tóm lại Grid phù hợp layout tổng thể 2 chiều, còn Flexbox phù hợp căn chỉnh component theo một chiều.
