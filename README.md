# Cốc Cốc Portable với Chrome++

Cốc Cốc Portable được cài đặt trực tiếp từ bản [standalone](https://support.coccoc.com/desktop/tai-ve-va-cai-dat-coc-coc-offline-cho-may-tinh-windows), sau đó sử dụng [Chrome++](https://github.com/Bush2021/chrome_plus) để chuyển hoàn toàn sang bản di động

<img src="https://img.bibica.net/VYqhc1DL.png" alt="VYqhc1DL">

- Download các phiên bản [portable](https://github.com/bibicadotnet/coccoc-portable/releases) làm sẵn, giải nén, là có thể sử dụng
- Copy thư mục `CocCoc_Portable`, mang sang máy khác dùng ngay mà không mất dữ liệu, không cần cấu hình lại các plugin, history ...
- Hỗ trợ các command line switches và chỉnh sửa tính năng qua file cấu hình `chrome++.ini`
- Thích hợp cho người dùng muốn nhẹ – nhanh – tiện – linh hoạt

<img src="https://img.bibica.net/IwQwVnNi.png" alt="IwQwVnNi">

- Bản portable sửa lại `browser.exe`, thêm vào 3 file `version.dll`, `chrome++.ini`, `update.bat` so với cài đặt thông thường

Bạn nào muốn Cốc Cốc sạch sẽ hơn, có thể [debloat](https://github.com/bibicadotnet/coccoc-debloat) thủ công lại 1 chút

Đây là 1 sản phẩm dùng cá nhân, chắc cũng hiếm ai dùng trình duyệt Cốc Cốc, nên chỉ tạo bản stable x64 thông dụng nhất chạy trên Windows

---

### Cập nhập bản mới

- Chạy file `update.bat`
- Nó sẽ chép bản mới nhất vào (giữ lại file cấu hình `chrome++.ini`cũ)

---

### Fork dự án

Bạn nào muốn cài đặt, mà hơi rén, không rõ tác giả có chỉnh sửa, cài đặt gì thêm vào không, có thể [fork](https://github.com/bibicadotnet/coccoc-portable/fork) dự án, bật chạy `Actions`, nó sẽ tự chạy mọi quá trình, thời gian build tầm 2 phút là xong, download release từ trang cá nhân về dùng cho an tâm
