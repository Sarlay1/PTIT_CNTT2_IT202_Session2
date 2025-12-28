-- Tạo CSDL
CREATE DATABASE bai03;
USE bai03;

-- Bảng Student
CREATE TABLE Student (
    ma_sv INT PRIMARY KEY,
    ho_ten VARCHAR(100)
);

-- Bảng Subject
CREATE TABLE Subject (
    ma_mon INT PRIMARY KEY,
    ten_mon VARCHAR(100),
    so_tin_chi INT
);

-- Bảng Enrollment
CREATE TABLE Enrollment (
    ma_sv INT,
    ma_mon INT,
    ngay_dang_ky DATE,
    PRIMARY KEY (ma_sv, ma_mon),
    FOREIGN KEY (ma_sv) REFERENCES Student(ma_sv),
    FOREIGN KEY (ma_mon) REFERENCES Subject(ma_mon)
);
