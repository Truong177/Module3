create database school;
use school;

create table GiaoVien (
    Ma_GV varchar(20) primary key,
    Ten_GV varchar(50),
    SDT varchar(10)
);

create table HocSinh (
    Ma_HS varchar(20) primary key,
    Ten_HS varchar(50),
    Ngay_Sinh datetime,
    Lop varchar(20),
    GT varchar(20)
);

create table MonHoc (
    Ma_MH varchar(20) primary key,
    Ten_MH varchar(50),
    Ma_GV varchar(20),
    foreign key (Ma_GV) references GiaoVien(Ma_GV)
);

create table BangDiem (
    Ma_HS varchar(20),
    Ma_MH varchar(20),
    Diem_Thi int,
    Ngay_Kt datetime,
    primary key (Ma_HS, Ma_MH),
    foreign key (Ma_HS) references HocSinh(Ma_HS),
    foreign key (Ma_MH) references MonHoc(Ma_MH)
);
