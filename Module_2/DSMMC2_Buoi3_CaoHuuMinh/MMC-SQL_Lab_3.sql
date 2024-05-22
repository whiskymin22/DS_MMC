USE testing_system_db;

-- Question 2 --  
SELECT *
FROM department
ORDER BY DepartmentID asc;

-- Question 3 --
SELECT DepartmentID AS ID
FROM department
WHERE DepartmentName = 'Sale';

-- Question 4 -- 
SELECT *
FROM Account
WHERE LENGTH(Fullname) = (
	SELECT MAX(LENGTH(Fullname))
	FROM Account
);		

-- Question 5 --
SELECT * 
FROM Account 
WHERE DepartmentID = 3 AND 
LENGTH(Fullname) = (
	SELECT MAX(LENGTH(Fullname)) 
	FROM Account 
	WHERE DepartmentID = 3);
    
-- Question 6 --
SELECT *
FROM `Group`
WHERE CreateDate < '2019/12/20';

-- Question 7 --
SELECT Count(AnswerID), QuestionID
FROM Answer
GROUP BY QuestionID
HAVING COUNT(AnswerID) >= 4 ;

-- Question 8 --
SELECT *
FROM Exam
WHERE Duration >= 60 
AND CreateDate < '2019/12/20';

-- Question 9 -- 
SELECT *
FROM `Group`
ORDER BY CreateDate DESC
LIMIT 5;

-- Question 10 --
SELECT COUNT(AccountID), DepartmentID
FROM Account
GROUP BY DepartmentID
HAVING DepartmentID =2;

-- Question 11 -- 
SELECT *
FROM Account
WHERE Fullname LIKE 'D%o';

-- Question 12 --
DELETE FROM Exam 
WHERE CreateDate < '2019/12/20';

-- Question 13-- 
DELETE FROM Question 
WHERE Content LIKE 'Câu hỏi%';

-- Question 14-- 
UPDATE `Account`
SET Fullname = 'Lô Văn Đề',
	Email = 'lo.vande@mmc.edu.vn'
WHERE AccountID = 5;

-- Question 15 -- 
UPDATE `Account`
SET DepartmentID = 4
WHERE DepartmentID = 5;