use QuanLySinhVien;

select *
from Student
where StudentName like 'h%';

select *
from Class
where month(StartDate)=12;

select *
from Subject
where Credit between 3 and 5;

update Student
set ClassId=2
where StudentName='Hung';

select S.StudentName,Sub.SubName,M.Mark
from Student S join Mark M on S.StudentId=M.StudentId
join Subject Sub on M.SubId=Sub.SubId
order by M.Mark desc,S.StudentName asc;