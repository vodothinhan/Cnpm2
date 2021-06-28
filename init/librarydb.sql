create database librarydb;

use librarydb;

create table book (
	book_id varchar(5) not null primary key,
    title varchar(100),
	author varchar(50),
    pages int(4),
	publisher varchar(100),
    category varchar(50),
    year_publishing year,
    num_copies int(5),
    status varchar(50),
    description text,
    image_name varchar(120)
);

INSERT INTO book VALUES ('00001','Cây Cam Ngọt Của Tôi','José Mauro de Vasconcelos',333,'NXB Thanh Hóa','Khoa học thường thức',2007,5,'Ổn','Đây là một mô tả','temp-12235989262213754276.jpg');
INSERT INTO book VALUES ('00002','Nhà Giả Kim','Paulo Coelho',128,'NXB Thanh Hóa','Khoa học thường thức',2007,1,'Ổn','Đây là một mô tả','temp-14438611480196141526.jpg');
INSERT INTO book VALUES ('00003','Biên Niên Cô Đơn','Nguyễn Ngọc Thạch',360,'NXB Hà Nội','Khoa học thường thức',2004,2,'Ổn','Đây là một mô tả','temp-7329036107498680084.jpg');
INSERT INTO book VALUES ('00004','Hai Số Phận','Jeffrey Archer',96,'NXB Giáo dục','Khoa học thường thức',2007,3,'Ổn, sứt bìa','Đây là một mô tả','temp-17624438115898823949.jpg');
INSERT INTO book VALUES ('00005','Con Chim Xanh Biếc Bay Về','Nguyễn Nhật Ánh',104,'NXB Giáo dục','Khoa học thường thức',2007,3,'Ổn','Đây là một mô tả','temp-6243426685116508297.jpg');
INSERT INTO book VALUES ('00006','Thiên Tài Bên Trái, Kẻ Điên Bên Phải','Cao Minh',76,'NXB Giáo dục','Khoa học thường thức',2007,3,'Ổn','Đây là một mô tả','temp-8476700387786158058.jpg');
INSERT INTO book VALUES ('00007','Kiếp Nào Ta Cũng Tìm Thấy Nhau','Brian L. Weiss',76,'NXB Giáo dục','Khoa học thường thức',2007,3,'Ổn','Đây là một mô tả','temp-13862094760385571107.jpg');
INSERT INTO book VALUES ('00008','Marco Polo - Từ Venice tới Thượng Đô','Laurence Bergreen',156,'NXB Phụ nữ','Đời sống',2009,2,'Ổn','Đây là một mô tả','temp-13064240004351430671.jpg');
INSERT INTO book VALUES ('00009','Chiến Binh Cầu Vồng','Andrea Hirata',128,'NXB Thanh Hóa','Khoa học thường thức',2007,1,'Ổn','Đây là một mô tả','temp-3984373128647845854.jpg');
INSERT INTO book VALUES ('00010','Từ Điển Tiếng “Em”','Khotudien',278,'NXB Thanh Niên','Đời sống',2007,3,'Ổn','Đây là một mô tả','temp-10075522682831764585.jpg');
INSERT INTO book VALUES ('00011','Tiếng Vọng Trong Lòng Đất','Mike Omer',360,'NXB Hà Nội','Khoa học thường thức',2004,2,'Ổn','Đây là một mô tả','temp-3015888053636485125.jpg');
INSERT INTO book VALUES ('00012','Bước Chậm Lại Giữa Thế Gian Vội Vã','Hae Min',96,'NXB Giáo dục','Khoa học thường thức',2007,3,'Ổn, sứt bìa','Đây là một mô tả','temp-8262627340495498759.jpg');
INSERT INTO book VALUES ('00013','Có Một Ngày, Bố Mẹ Sẽ Già Đi','Nhiều Tác Giả',104,'NXB Giáo dục','Khoa học thường thức',2007,3,'Ổn','Đây là một mô tả','temp-18128511448457962576.jpg');
INSERT INTO book VALUES ('00014','Chữ Xưa Còn Một Chút Này','Nguyễn Thùy Dung',76,'NXB Giáo dục','Khoa học thường thức',2007,3,'Ổn','Đây là một mô tả','temp-6352099207348952932.jpg');
INSERT INTO book VALUES ('00015','Giết Con Chim Nhại','Harper Lee',76,'NXB Giáo dục','Khoa học thường thức',2007,3,'Ổn','Đây là một mô tả','temp-16741118072528735594.jpg');
