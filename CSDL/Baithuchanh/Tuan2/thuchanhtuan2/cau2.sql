create database QLNV;
use QLNV;
create table PhongBan (
MaPB int primary key,
TenPB nvarchar(50) not null,
Nguoiquanly int not null
);

create table NhanVien (
MaNV int primary key,
TenNV nvarchar(50) not null,
Ngaysinh datetime,
Diachi nvarchar(50),
Luong decimal(12,0) default 0,
Gioitinh bit not null,
MaPB int 
);

ALTER TABLE NhanVien 
ADD CONSTRAINT fk_nv_phongban 
FOREIGN KEY (MaPB) REFERENCES PhongBan(MaPB);

create table CongTrinh (
MaCT int primary key,
TenCT nvarchar(50) not null,
NgayKC datetime not null,
NgayHT datetime not null,
Diadiem nvarchar(50)
);

create table ThamGia (
MaCT int,
MaNV int,
Songaycong numeric(18,0),
PRIMARY KEY (MaCT, MaNV),
CONSTRAINT fk_tg_congtrinh FOREIGN KEY (MaCT) REFERENCES CongTrinh(MaCT),
CONSTRAINT fk_tg_nhanvien FOREIGN KEY (MaNV) REFERENCES NhanVien(MaNV));





