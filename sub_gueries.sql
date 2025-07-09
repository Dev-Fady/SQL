select stdno,mark from Register
where mark=(select MAX(mark) from Register)

select stdno,mark from Register
where mark>(select avg(mark) from Register)

select  r.Stdno,s.Firstname,s.Lastname
from Students as s join Register as r
on s.Stdno=r.Stdno
where r.courseID in (
select r.courseID
from Students as s join Register as r
on r.Stdno=s.Stdno
where s.Firstname='khaled'
)

create view Test
as


select  r.Stdno,s.Firstname,s.Lastname,r.mark
from Students as s join Register as r
on s.Stdno=r.Stdno 
where mark > all(
select r.mark
from Students as s join Register as r
on r.Stdno=s.Stdno
where Depart='CS'
)

select * from CS_Depart;

SELECT 
    s.Firstname, 
    s.Lastname, 
    r.grade, 
    r.mark, 
    sem.semesterYear, 
    c.CourseTitle, 
    c.Cost, 
    s.Depart
FROM 
    dbo.Course AS c
INNER JOIN 
    dbo.Register AS r ON c.CourseId = r.courseID
INNER JOIN 
    dbo.Semester AS sem ON r.semesterID = sem.semesterID
INNER JOIN 
    dbo.Students AS s ON r.Stdno = s.Stdno
WHERE  
    s.Depart = 'CS' 
    AND c.Cost > (
        SELECT MAX(Cost) FROM dbo.Course
    )

