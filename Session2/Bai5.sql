create table score (
    student_id int,
    course_id int,
    process_score decimal(3,1) check (process_score between 0 and 10),
    final_score decimal(3,1) check (final_score between 0 and 10),

    primary key (student_id, course_id),

    foreign key (student_id) references student(student_id),
    foreign key (course_id) references course(course_id)
);
