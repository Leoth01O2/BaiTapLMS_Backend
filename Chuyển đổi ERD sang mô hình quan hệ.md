bước 1: xác định các thực thể
trong mô hình có 5 thực thể: PHIEUXUAT, VATTU, PHIEUNHAP, DONDH và NHACC.
bước 2: xác định các mối quan hệ
quan hệ 1-chi tiết phiếu xuất: PHIEUXUAT và VATTU có quan hệ N-N. Quan hệ này có thêm hai thuộc tính DGXuat và SLXuat, vì vậy cần tạo một bảng riêng để lưu chi tiết phiếu xuất.
quan hệ 2-chi tiết phiếu nhập: VATTU và PHIEUNHAP có quan hệ N-N. Quan hệ có hai thuộc tính DGNhap và SLNhap nên cũng cần tạo một bảng riêng
quan hệ 3-chi tiết đơn đặt hàng: VATTU và DONDH có quan hệ N-N. Quan hệ này không có thuộc tính riêng nên bảng trung gian chỉ cần chứa khóa của hai bảng.
quan hệ 4 -cung cấp: DONDH và NHACC có quan hệ N-1,  là một nhà cung cấp có thể có nhiều đơn đặt hàng, còn mỗi đơn đặt hàng chỉ thuộc một nhà cung cấp. Vì vậy không cần tạo bảng riêng, chỉ cần thêm MaNCC vào bảng DONDH làm khóa ngoại.
bước 3: xác định thuộc tính đa trị
thuộc tính SĐT của NHACC được vẽ bằng hình bầu dục viền đôi nên đây là thuộc tính đa trị. Một nhà cung cấp có thể có nhiều số điện thoại, vì vậy cần tách SĐT ra thành một bảng riêng
bước 4: các bảng sau khi chuyển đổi
PHIEUXUAT (SoPX, NgayXuat)
khóa chính: SoPX.
VATTU (MaVTU, TenVTU)
khóa chính: MaVTU.
PHIEUNHAP (SoPN, NgayNhap)
khóa chính: SoPN.
DONDH (SoDH, NgayDH, MaNCC)
khóa chính: SoDH.
khóa ngoại: MaNCC tham chiếu đến NHACC.
NHACC (MaNCC, TenNCC, DiaChi)
khóa chính: MaNCC.
NHACC_SDT (MaNCC, SDT)
khóa chính: (MaNCC, SDT).
khóa ngoại: MaNCC tham chiếu đến NHACC.
bảng này được tách ra từ thuộc tính đa trị SĐT.
CT_PHIEUXUAT (SoPX, MaVTU, DGXuat, SLXuat)
khóa chính: (SoPX, MaVTU).
khóa ngoại: SoPX tham chiếu đến PHIEUXUAT, MaVTU tham chiếu đến VATTU.
CT_PHIEUNHAP (SoPN, MaVTU, DGNhap, SLNhap)
khóa chính: (SoPN, MaVTU).
khóa ngoại: SoPN tham chiếu đến PHIEUNHAP, MaVTU tham chiếu đến VATTU.
CT_DONDH (SoDH, MaVTU)
khóa chính: (SoDH, MaVTU).
khóa ngoại: SoDH tham chiếu đến DONDH, MaVTU tham chiếu đến VATTU.