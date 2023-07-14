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
### Client (Android Studio)
1) Import Project trong thư mục Client vào Android Studio
2) Sửa **192.168.1.73** ở dòng code ```public static final String baseUrl = "http://192.168.1.73/Server/ecommerce/";``` trong file ApiUtils.java thành địa chỉ IP của bạn
3) Sửa đường dẫn ở dòng code ```implementation fileTree(dir: 'D:\\job\\mobile\\android\\android\\project\\androidstudio\\ECommerce', include: ['*.aar', '*.jar'], exclude: [])``` trong file build.gradle(Module:app) thành đường dẫn chứa file zpdk-release-v3.1.aar của bạn
### Server (Visual Studio Code)
1) Thêm thư mục Server 
### Database (XAMPP Control Panel)