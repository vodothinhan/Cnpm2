# Software Engineering Project

## Set up project LibraryManager

### 1. Nạp hình
Tạo thư mục C:/var/webapp/images và giải nén tất cả hình từ file [var-webapp-images.zip](https://github.com/pthdang/Software_Engineering_Project/blob/main/init/var-webapp-images.zip) vào thư mục này.

### 2. Tạo database
Mở MySQL Workbench → Open SQL Script → Execute [librarydb.sql](https://github.com/pthdang/Software_Engineering_Project/blob/main/init/librarydb.sql)

### 3. Nạp project vào IDEA
Mở IDEA → File | New | Project from Version Control → Clone project theo URL: https://github.com/pthdang/Software_Engineering_Project.git

### 4. Build Project (Ctrl + F9)

## Cài đặt Tomcat 9.0.48
* Tải ở: https://downloads.apache.org/tomcat/tomcat-9/v9.0.48/bin/apache-tomcat-9.0.48.zip
* Mở IDEA và thêm vào File | Settings | Build, Execution, Deployment | Application Servers > [+] Tomcat Server (Tomcat Home trỏ đến thư mục Tomcat, ví dụ: apache-tomcat-9.0.48)

## Phần mềm
* IDEA 2021.1.2
* MySQL Workbench 8.0.25
* Tomcat 9.0.48
