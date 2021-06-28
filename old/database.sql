create database library;

use library;

create table book (
	bookid varchar(5) not null primary key,
    title varchar(100),
	author varchar(50),
    page int(4),
	publisher varchar(100),
    category varchar(50),
    yearPublishing year,
    numCopies int(5),
    status varchar(50),
    description text
);

insert into book values(
	"00001",
    "101 trò chơi sinh học cho trẻ em",
    "Janice Van Cleave's",
    128,
    "NXB Thanh Hóa",
    "Khoa học thường thức",
    2007,
    1,
    "Ổn",
    "Đây là một mô tả"
);

insert into book values(
	"00002",
    "298 món ngon dễ dàng trong gia đình",
    "Hoàng Hương",
    278,
    "NXB Thanh Niên",
    "Đời sống",
    2007,
    3,
    "Ổn",
    "Đây là một mô tả"
);

insert into book values(
	"00003",
    "Bí ẩn về thế giới thực vật",
    "Trương Văn Nguyên",
    360,
    "NXB Hà Nội",
    "Khoa học thường thức",
    2004,
    2,
    "Ổn",
    "Đây là một mô tả"
);

insert into book values(
	"00004",
    "Bí mật của thiên nhiên: Nghệ thuật tự nhiên",
    "Nguyễn Vĩnh Bách",
    96,
    "NXB Giáo dục",
    "Khoa học thường thức",
    2007,
    3,
    "Ổn, sứt bìa",
    "Đây là một mô tả"
);

insert into book values(
	"00005",
    "Bí mật của thiên nhiên: Cây cỏ quanh ta",
    "Nguyễn Vĩnh Bách",
    104,
    "NXB Giáo dục",
    "Khoa học thường thức",
    2007,
    3,
    "Ổn",
    "Đây là một mô tả"
);

insert into book values(
	"00006",
    "Bí mật của thiên nhiên: Những tạo vật kì thú",
    "Nguyễn Vĩnh Bách",
    76,
    "NXB Giáo dục",
    "Khoa học thường thức",
    2007,
    3,
    "Ổn",
    "Đây là một mô tả"
);

insert into book values(
	"00007",
    "Bí mật của thiên nhiên: Qùa tặng thiên nhiên",
    "Nguyễn Vĩnh Bách",
    76,
    "NXB Giáo dục",
    "Khoa học thường thức",
    2007,
    3,
    "Ổn",
    "Đây là một mô tả"
);

insert into book values(
	"00008",
    "Bí quyết sống khỏe đến 100 tuổi",
    "Nguyễn Vĩnh Bách",
    156,
    "NXB Phụ nữ",
    "Đời sống",
    2009,
    2,
    "Ổn",
    "Đây là một mô tả"
);