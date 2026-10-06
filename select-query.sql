use QuanLySinhVien;

select *
from Student;

select *
from Student
where Status = true;

select *
from Subject
where Credit < 10;

select S.StudentId,S.StudentName,C.ClassName
from Student S join Class C on S.ClassId=C.ClassID
where C.ClassName='A1';

select S.StudentId,S.StudentName,Sub.SubName,M.Mark
from Student S join Mark M on S.StudentId=M.StudentId
join Subject Sub on M.SubId=Sub.SubId
where Sub.SubName='CF';