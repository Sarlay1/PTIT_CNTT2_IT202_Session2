-- Tạo CSDL
CREATE DATABASE bai04;
USE bai04;

-- Bảng Teacher
CREATE TABLE Teacher (
    ma_gv INT PRIMARY KEY,
    ho_ten VARCHAR(100),
    email VARCHAR(100) UNIQUE
);

-- Bảng Subject
CREATE TABLE Subject (
    ma_mon INT PRIMARY KEY,
    ten_mon VARCHAR(100),
    so_tin_chi INT
);

-- Liên kết Subject - Teacher
ALTER TABLE Subject
ADD ma_gv INT;

ALTER TABLE Subject
ADD FOREIGN KEY (ma_gv) REFERENCES Teacher(ma_gv);
