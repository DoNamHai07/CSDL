create database qlkh;
use qlkh;

create table khachhang(
makh varchar(15) primary key,
hoten nvarchar(50) not null,
dchi  nvarchar(255) not null ,
sodt varchar(15) not null,
ngsinh datetime not null,
doanhso decimal(15,3) not null,
ngdangki datetime not null
);

create table nhanvien(
manv varchar(15) primary key,
hoten nvarchar(50) not null,
ngvaolam  datetime not null,
sodt varchar(15) not null
);

create table sanpham(
masp varchar(15) primary key,
tensp nvarchar(50) not null,
dvitinh  nvarchar(50) not null,
nuocsx nvarchar(50) not null,
gia decimal(15,3) not null
);

create table hoadon(
sohd varchar(15) primary key,
ngahd datetime not null,
makh  varchar(15) not null,
manv varchar(15) not null,
trigia decimal(15,3) not null,
CONSTRAINT fk_hoadon_khachhang FOREIGN KEY (makh)  REFERENCES khachhang(makh),
CONSTRAINT fk_hoadon_nhanvien FOREIGN KEY (manv)  REFERENCES nhanvien(manv)
);

create table cthd(
sohd varchar(15) ,
masp varchar(15),
soluong int(15) not null,
primary key (sohd, masp),
CONSTRAINT fk_cthd_hoadon FOREIGN KEY (sohd)  REFERENCES hoadon(sohd),
CONSTRAINT fk_cthd_sanpham FOREIGN KEY (masp)  REFERENCES sanpham(masp)
);