# Cốc Cốc Portable Debloat 

Cốc Cốc Portable Debloat được cài đặt trực tiếp từ bản [standalone](https://support.coccoc.com/desktop/tai-ve-va-cai-dat-coc-coc-offline-cho-may-tinh-windows), sau đó sử dụng [Chrome++](https://github.com/Bush2021/chrome_plus) để chuyển hoàn toàn sang bản di động

<p align="center">
<img src="https://img.bibica.net/VYqhc1DL.png" alt="VYqhc1DL">
</p>

Đây là 1 sản phẩm dùng cá nhân, chắc cũng hiếm ai dùng trình duyệt Cốc Cốc, nên chỉ tạo bản stable x64 thông dụng nhất chạy trên Windows

- Download các phiên bản [portable](https://github.com/bibicadotnet/coccoc-portable/releases) làm sẵn, giải nén, là có thể sử dụng
- Copy thư mục `CocCoc_Portable`, mang sang máy khác dùng ngay mà không mất dữ liệu, không cần cấu hình lại các plugin, history ...
- Hỗ trợ các command line switches và chỉnh sửa tính năng qua file cấu hình `chrome++.ini`
- Thích hợp cho người dùng muốn nhẹ – nhanh – tiện – linh hoạt

<p align="center">
<img src="https://img.bibica.net/Fk9HGGgb.png" alt="Fk9HGGgb">
</p>

- Các file được xóa thêm ở quá trình build portable 
```
Removed Installer directory
Removed Dictionaries directory
Removed: C:\Program Files\CocCoc\Browser\Application\SetupMetrics
Removed: C:\Program Files\CocCoc\Browser\Application\browser_proxy.exe
Removed: C:\Program Files\CocCoc\Browser\Application\VisualElementsManifest.xml
Removed from Extensions: afaljjbleihmahhpckngondmgohleljb.json
Removed from Extensions: cache.crx
Removed from Extensions: cashback.crx
Removed from Extensions: en2vi.crx
Removed from Extensions: gcopfpdkmpdacdmbjonfjmbnccmnjdoi.json
Removed from Extensions: gfgbmghkdjckppeomloefmbphdfmokgd.json
Kept file: jdfkmiabjpfjacifcmihfdjhpnjpiick.json
Kept file: savior.crx
```
- Bản portable sửa lại `browser.exe` gốc để bypass [Secure Preferences](https://chromium.woolyss.com/#secure-preferences) nhằm tạo ra phiên bản portable thực sự
- Thêm vào 5 file `version.dll`, `chrome++.ini`, `update.bat`, `debloat.reg`, `default-apps-multi-profile.bat` so với cài đặt thông thường

Bạn nào muốn Cốc Cốc sạch sẽ hơn, bật chạy `debloat.reg` thủ công là được

---

### Cập nhập bản mới

- Chạy file `update.bat`
- Nó sẽ chép bản mới nhất vào (giữ lại file cấu hình `chrome++.ini`cũ)

---

### Phiên bản mới???
<p align="center">
<img src="https://img.bibica.net/Koy2oGJn.png" alt="Koy2oGJn">
</p>

Cốc Cốc không thấy hỗ trợ download bản cũ, trừ vào 'coccoc://version/` xem phiên bản, còn lại không biết họ đặt tên phiên bản ở chỗ nào, nên dùng theo tên ở phiên bản hiển thị ở thư mục và tên file làm tên phiên bản portable

### Fork dự án

Bạn nào muốn cài đặt, mà hơi rén, không rõ tác giả có chỉnh sửa, cài đặt gì thêm vào không, có thể [fork](https://github.com/bibicadotnet/coccoc-portable/fork) dự án, bật chạy `Actions`, nó sẽ tự chạy mọi quá trình, thời gian build tầm 2 phút là xong, tự download release từ trang cá nhân về dùng cho an tâm
