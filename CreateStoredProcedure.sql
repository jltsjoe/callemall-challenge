USE [School]
GO

/****** Object:  StoredProcedure [dbo].[StudentGPA]    Script Date: 8/31/2021 4:07:31 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

Create procedure [dbo].[StudentGPA] as 

with StudentGPA as (select studentid, FORMAT(sum(grade)/count(grade),'N2') GPA
from StudentGrade
where grade is not null
group by StudentID)

select a.PersonID, a.FirstName, a.LastName, b.GPA
from Person a inner join StudentGPA b 
on b.StudentID = a.PersonID
order by a.PersonID
GO


