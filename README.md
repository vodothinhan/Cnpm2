# Software Engineering Project

## A. Set up project LibraryManager

### 1. Nạp hình
Tạo thư mục C:/var/webapp/images và giải nén tất cả hình từ file [var-webapp-images.zip](https://github.com/pthdang/Software_Engineering_Project/blob/main/init/var-webapp-images.zip) vào thư mục này.

### 2. Tạo database
Mở MySQL Workbench → Open SQL Script → Execute [librarydb.sql](https://github.com/pthdang/Software_Engineering_Project/blob/main/init/librarydb.sql)

### 3. Nạp project vào IDEA
Mở IDEA → File | New | Project from Version Control → Clone project theo URL: https://github.com/pthdang/Software_Engineering_Project.git

### 4. Build Project (Ctrl + F9)

### 5. Run (Shift + F10)

## B. Cấu hình utils.ConstUtils
* Mặc định, DB_NAME là librarydb, DB_USERNAME là root, DB_PASSWORD là 12345.
* Có thể thay đổi nếu như khác.

## C. Điền nhanh form /addBook
* F12 (Console) → Chạy nội dung trong file [fill.js](https://github.com/pthdang/Software_Engineering_Project/blob/main/init/fill.js)
* Có thể lưu thành [bookmarklet](https://chriszarate.github.io/bookmarkleter/)

# Phần mềm
* IDEA 2021.1.2
* MySQL Workbench 8.0.25
* Tomcat 9.0.48

## Cài đặt Tomcat 9.0.48
* Tải ở: https://downloads.apache.org/tomcat/tomcat-9/v9.0.48/bin/apache-tomcat-9.0.48.zip
* Mở IDEA và thêm vào File | Settings | Build, Execution, Deployment | Application Servers > [+] Tomcat Server (Tomcat Home trỏ đến thư mục Tomcat, ví dụ: apache-tomcat-9.0.48)
