-- Tạo CSDL
CREATE DATABASE bai02;
USE bai02;

-- Tạo bảng Student
CREATE TABLE Student (
    ma_sv INT PRIMARY KEY,
    ho_ten VARCHAR(100)
);

-- Tạo bảng Subject
CREATE TABLE Subject (
    ma_mon INT PRIMARY KEY,
    ten_mon VARCHAR(100),
    so_tin_chi INT CHECK (so_tin_chi > 0)
);
