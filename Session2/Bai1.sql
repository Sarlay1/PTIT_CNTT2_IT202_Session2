-- Tạo CSDL
CREATE DATABASE bai01;
USE bai01;

-- Tạo bảng Class
CREATE TABLE Class (
    ma_lop INT PRIMARY KEY,
    ten_lop VARCHAR(100),
    nam_hoc VARCHAR(20)
);

-- Tạo bảng Student
CREATE TABLE Student (
    ma_sv INT PRIMARY KEY,
    ho_ten VARCHAR(100),
    ngay_sinh DATE,
    ma_lop INT,
    FOREIGN KEY (ma_lop) REFERENCES Class(ma_lop)
);
