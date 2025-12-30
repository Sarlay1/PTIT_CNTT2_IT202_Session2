create database quan_ly_dao_tao;
use quan_ly_dao_tao;

create table class (
    class_id int auto_increment primary key,
    class_name varchar(50) not null unique
);
create table student (
    student_id int auto_increment primary key,
    full_name varchar(100) not null,
    birth_date date,
    email varchar(100) not null unique,
    class_id int,

    foreign key (class_id) references class(class_id)
);
create table teacher (
    teacher_id int auto_increment primary key,
    full_name varchar(100) not null,
    email varchar(100) unique
);
create table course (
    course_id int auto_increment primary key,
    course_name varchar(100) not null unique,
    credits int not null check (credits > 0),
    teacher_id int,

    foreign key (teacher_id) references teacher(teacher_id)
);
create table enrollment (
    student_id int,
    course_id int,
    enroll_date date,

    primary key (student_id, course_id),

    foreign key (student_id) references student(student_id),
    foreign key (course_id) references course(course_id)
);
create table score (
    student_id int,
    course_id int,
    process_score decimal(3,1) check (process_score between 0 and 10),
    final_score decimal(3,1) check (final_score between 0 and 10),

    primary key (student_id, course_id),

    foreign key (student_id) references student(student_id),
    foreign key (course_id) references course(course_id)
);
