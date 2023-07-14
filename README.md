# ECOMMERCE SHOP - APP BÁN HÀNG TÍCH HỢP THANH TOÁN ĐIỆN TỬ
***
App bán hàng cho phép khách hàng mua sản phẩm online, có tích hợp hình thức thanh toán điện tử tiện lợi. App có phần quản lý giúp người bán quản lý dễ dàng hơn
***
## MÔI TRƯỜNG VÀ PHẦN MỀM CÀI ĐẶT
### MÔI TRƯỜNG
- Android 7.0 Nougat
- Min SDK 24
- PHP 8.1.12
- Java 18.0.2
### PHẦN MỀM
- Android Studio Flamingo | 2022.2.1 Patch 2
- Visual Studio Code 1.80.1
- XAMPP Control Panel v3.3.0
***
## HƯỚNG DẪN CÀI ĐẶT
### CLIENT (ANDROID STUDIO)
1) Import Project trong thư mục Client vào Android Studio
2) Sửa **192.168.1.73** ở dòng code ```public static final String baseUrl = "http://192.168.1.73/ecommerce/Serve/";``` trong file ApiUtils.java thành địa chỉ IP của bạn
3) Sửa đường dẫn ở dòng code ```implementation fileTree(dir: 'D:\\job\\mobile\\android\\android\\project\\androidstudio\\ECommerce', include: ['*.aar', '*.jar'], exclude: [])``` trong file build.gradle(Module:app) thành đường dẫn chứa file zpdk-release-v3.1.aar của bạn
### SERVER (VISUAL STUDIO CODE)
1) Tạo thư mục ECommerce trong thư mục htdocs của bạn, sau đó thêm thư mục Server vào 
### DATABASE (XAMPP CONTROL PANEL)
1) Tạo một database mới tên ecommerce trên phpMyAdmin, sau đó Import file ecommerce.sql trong thư mục Database vào
***
## CÁC CHỨC NĂNG CHÍNH
### CÁC CHỨC NĂNG CHUNG
* Đăng ký tài khoản, đăng nhập, reset password bằng Firebase Authentication
* Chat Realtime bằng Firebase Firestore Database
* Xem thông tin chi tiết sản phẩm
### CÁC CHỨC NĂNG CỦA KHÁCH HÀNG
* Xem sản phẩm theo từng loại (điện thoại, laptop)
* Tìm kiếm sản phẩm theo tên sản phẩm
* Thêm sản phẩm vào giỏ hàng
* Đặt hàng có tích hợp thanh toán bằng ZaloPay và gửi thông báo về đơn hàng mới đến người bán bằng Firebase Messaging
* Xem lịch sử đơn hàng
### CÁC CHỨC NĂNG CỦA NGƯỜI BÁN
* Quản lý sản phẩm (Thêm, xóa, sửa sản phẩm)
* Quản lý đơn hàng (Cập nhật trạng thái đơn hàng và gửi thông báo đến khách hàng bằng Firebase Messaging)
* Thống kê doanh thu theo từng ngày trong tháng
***
## GIAO DIỆN
![Màn hình welcome](https://github.com/HoangLinhSama/ECommerceShop/blob/master/Image/welcome.png) ![Màn hình đăng nhập](https://github.com/HoangLinhSama/ECommerceShop/blob/master/Image/dang_nhap.png) ![Màn hình chính](https://github.com/HoangLinhSama/ECommerceShop/blob/master/Image/man_hinh_chinh_user.png) ![Đăng ký tài khoản](https://github.com/HoangLinhSama/ECommerceShop/blob/master/Image/dang_ky.png)


