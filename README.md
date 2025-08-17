# Cốc Cốc Portable với Chrome++

Cốc Cốc Portable được build trực tiếp từ bản cài đặt [standalone](https://support.coccoc.com/desktop/tai-ve-va-cai-dat-coc-coc-offline-cho-may-tinh-windows) chính thức của CocCoc, sau đó sử dụng Chrome++ để chuyển hoàn toàn sang bản di động

<img src="https://img.bibica.net/VYqhc1DL.png" alt="VYqhc1DL">

- Chỉ cần download các phiên bản [portable](https://github.com/bibicadotnet/coccoc-portable/releases) làm sẵn, giải nén, là có thể sử dụng
- Copy thư mục `CocCoc_Portable`, mang sang máy khác dùng ngay mà không mất dữ liệu, không cần cấu hình lại các addon, plugin, history ...
- Hỗ trợ thêm các lệnh dòng (command line switches) và chỉnh sửa nhiều tính năng qua file cấu hình `chrome++.ini`
- Thích hợp cho người dùng muốn nhẹ – nhanh – tiện – linh hoạt

<img src="https://img.bibica.net/cWQQ5LyN.png" alt="cWQQ5LyN">

Do muốn nguyên bản nhất có thể, bản portable không làm thêm gì, chỉ thêm vào 2 file `version.dll` và `chrome++.ini` so với bản cài đặt thông thường

Bạn nào muốn Cốc Cốc sạch sẽ hơn, có thể [debloat](https://github.com/bibicadotnet/coccoc-debloat) thủ công lại 1 chút

Đây là 1 sản phẩm dùng cá nhân, chắc cũng chẳng ai dùng trình duyệt Cốc Cốc, nên chỉ tạo 1 bản stable x64 chạy trên Windows

### Fork

Bạn nào muốn cài đặt, mà hơi rén, không rõ tác giả có chỉnh sửa, cài đặt gì thêm vào không, có thể [fork](https://github.com/bibicadotnet/coccoc-portable/fork) dự án, bật chạy `Actions` là được, nó sẽ tự chạy mọi quá trình, thời gian build tầm 2 phút là xong, download release từ trang cá nhân về cho an tâm
