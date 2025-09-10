<p align="center">
<img src="https://img.bibica.net/LdQl82XW.png" alt="Fk9HGGgb">
</p>

# Cốc Cốc Portable Debloat 

Cốc Cốc Portable Debloat là phiên bản trình duyệt Cốc Cốc chạy trên Windows, đã được chuyển hoàn toàn sang di động, có thể chép dữ liệu sang thiết bị khác mà không mất dữ liệu, không cần cấu hình lại các plugin, history … kèm theo đó là debloat, tắt bớt các quảng cáo, giúp giao diện Cốc Cốc sạch như Chromium nguyên bản

Cốc Cốc Portable Debloat được build trực tiếp từ installer mặc định, sau đó sử dụng [Chrome++](https://github.com/Bush2021/chrome_plus) để chuyển hoàn toàn sang bản di động, mọi quá trình tự động thông qua GitHub Actions

Đây là 1 sản phẩm dùng cá nhân, chắc cũng hiếm ai dùng trình duyệt Cốc Cốc, nên chỉ tạo bản stable x64 thông dụng nhất chạy trên Windows

### Các bước tối ưu bao gồm:
- Tắt các tiện ích mặc định (Từ Điển, Rủng Rỉnh)
- Tắt Side Panel, Split View
- Thay thế Tab mới (New Tab) bằng trang sạch không quảng cáo
- Tắt mọi tiến trình chạy ngầm và cập nhật tự động
- Tắt gần như mọi thứ có thể gửi thông tin về Google hay Cốc Cốc
- Thiết lập quyền riêng tư ở mức nghiêm ngặt, tắt cookie của bên thứ ba, tắt thông báo, tắt định vị, tắt cảm biến chuyển động
- Sử dụng tự động DNS Cloudflare để tăng tốc và bảo vệ quyền riêng tư.
- Bật tính năng tiết kiệm RAM (Balanced memory savings)
- Chặn hoàn toàn các domain liên quan tới `coccoc.com`, `qccoccocmedia.vn`

### Khuyết điểm?
Các video, auto chạy qua DRM sẽ gặp lỗi, tạm chưa có hướng xử lý, vì đã bypass Secure Preferences

### [Download Cốc Cốc Portable Debloat](https://coccoc.bibica.net/)
Tùy thuộc bạn thích dùng bản mới nhất, hay các bản cũ hơn mà chọn phiên bản phù hợp (trang download sẽ hiện thị 5 nhánh gần nhất)

<p align="center">
<img src="https://img.bibica.net/AEPCJ6rI.png" alt="AEPCJ6rI">
</p>

- Thêm vào 5 file `version.dll`, `chrome++.ini`, `update.bat`, `debloat.reg`, `default-apps-multi-profile.bat` so với cài đặt thông thường

<p align="center">
<img src="https://img.bibica.net/Fk9HGGgb.png" alt="Fk9HGGgb">
</p>

- Các file xóa ở quá trình build portable

```
  - Removed Installer directory
  - Removed Dictionaries directory
  - Removed: C:\Program Files\CocCoc\Browser\Application\SetupMetrics
  - Removed: C:\Program Files\CocCoc\Browser\Application\browser_proxy.exe
  - Removed: C:\Program Files\CocCoc\Browser\Application\VisualElementsManifest.xml
  - Removed from Extensions: afaljjbleihmahhpckngondmgohleljb.json
  - Removed from Extensions: cache.crx
  - Removed from Extensions: cashback.crx
  - Removed from Extensions: en2vi.crx
  - Removed from Extensions: gcopfpdkmpdacdmbjonfjmbnccmnjdoi.json
  - Removed from Extensions: gfgbmghkdjckppeomloefmbphdfmokgd.json
```

### Debloat

Bạn nào muốn Cốc Cốc sạch sẽ hơn, bật chạy `CocCoc_Portable\CocCoc\debloat.reg`

Chặn hoàn toàn các domain liên quan tới coccoc

```
- coccoc.com
- qc.coccoc.com
- qccdn.coccoc.com
- cdn-qc.coccoc.com
- qccoccocmedia.vn
- catalog.qc.coccoc.com
- qc-static.coccoc.com
- ntrb.qc.coccoc.com
- context.qc.coccoc.com
- qcvod.coccoc.com
```

---

### Đặt làm trình duyệt mặc định

- Chạy file `CocCoc_Portable\CocCoc\default-apps-multi-profile.bat`

---

### Cập nhập bản mới

- Chạy file `CocCoc_Portable\CocCoc\update.bat`
- Nó chỉ chép bản mới nhất vào (không ghi đè các file `chrome++.ini`, `debloat.reg`, `default-apps-multi-profile.bat` có sẵn, tránh làm mất cấu hình nếu bạn chỉnh sửa lại)

---

### Lỗi

Các file video, auto ... chạy qua DRM có thể gặp lỗi, không xem được

---

### Tên gọi phiên bản portable
<p align="center">
<img src="https://img.bibica.net/Koy2oGJn.png" alt="Koy2oGJn">
</p>

Không tìm thấy cách Cốc Cốc đặt tên phiên bản ở chỗ nào, nên dùng tên theo Chromium version (nó sẽ không chính xác so với con số thể hiện ra ở `coccoc://version/`)

### Fork dự án

Bạn nào muốn cài đặt, mà hơi rén, không rõ tác giả có chỉnh sửa, cài đặt gì thêm vào không, có thể [fork](https://github.com/bibicadotnet/coccoc-portable/fork) dự án, bật chạy `Actions`, nó sẽ tự chạy mọi quá trình, thời gian build tầm 2-10 phút là xong, tự download release từ trang cá nhân về dùng cho an tâm
