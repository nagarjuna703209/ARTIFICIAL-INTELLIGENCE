student(john, [math, history, physics]).
student(jim, [math, history, english]).
student(alice, [history, physics, chemistry]).

teacher(mr_jones, [math]).
teacher(ms_doe, [history, english]).
teacher(dr_lee, [physics, chemistry]).

subject_code(math, 101).
subject_code(history, 102).
subject_code(english, 103).
subject_code(physics, 104).
subject_code(chemistry, 105).

teaches(Teacher, Subject) :- teacher(Teacher, Subject).

student_teacher(Student, Teacher, Subject) :- student(Student, List), member(Subject, List), teaches(Teacher, Subject).
