USE QuanLySinhVien;

SELECT *
FROM Subject
WHERE Credit >= ALL (SELECT Credit FROM Subject);

SELECT Sub.*, M.Mark
FROM Subject Sub join Mark M on Sub.SubId = M.SubId
WHERE M.Mark >= ALL (SELECT Mark FROM Mark);

SELECT S.StudentId, S.StudentName, AVG(M.Mark) AS DiemTB
FROM Student S join Mark M on S.StudentId = M.StudentId
GROUP BY S.StudentId, S.StudentName
ORDER BY DiemTB DESC;