CREATE DATABASE Testing_System_Db;

USE Testing_System_Db;

CREATE TABLE Department(
    DepartmentID 	INT PRIMARY KEY,
    DepartmentName 	VARCHAR(50)
);

CREATE TABLE `Position`(
    PositionID		 INT PRIMARY KEY,
    PositionName 	 ENUM('Dev', 'Test', 'Srum Master', 'PM')
);

CREATE TABLE Account(
    AccountID 		INT AUTO_INCREMENT PRIMARY KEY,
    Email 		VARCHAR(50),
    Username 		VARCHAR(50),
	Fullname 	VARCHAR(50),
    DepartmentID 	INT,
    PositionID 		INT, 
    FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID),
    FOREIGN KEY (PositionID) REFERENCES `Position`(PositionID)
);

CREATE TABLE `Group`(
	GroupID 	INT AUTO_INCREMENT PRIMARY KEY,
    GroupName 		VARCHAR(50),
    CreatorID 		INT,
    CreateDate 		DATE
);  

CREATE TABLE GroupAccount (
    GroupID             VARCHAR(50),
    AccountID           VARCHAR(50),
    JoinDate            DATE
);

CREATE TABLE TypeQuestion (
    TypeID              INT AUTO_INCREMENT PRIMARY KEY,
    TypeName            ENUM("Essay","Multiple-Choice")
);

CREATE TABLE CategoryQuestion (
    CategoryID              INT AUTO_INCREMENT PRIMARY KEY,
    CategoryName            VARCHAR(50)
);

CREATE TABLE Question (
    QuestionID              INT AUTO_INCREMENT PRIMARY KEY,
    Content                 VARCHAR(50),
    CategoryID              VARCHAR(50),
    TypeID                  VARCHAR(50),
    CreatorID               VARCHAR(50),
    CreateDate              DATE
);

CREATE TABLE Answer (
    AnswerID                INT AUTO_INCREMENT PRIMARY KEY,
    Content                 VARCHAR(50),
    QuestionID              VARCHAR(50),
    isCorrect               BOOLEAN
);

CREATE TABLE Exam (
    ExamID                  INT AUTO_INCREMENT PRIMARY KEY,
    Code                    VARCHAR(50),
    Title                   VARCHAR(50),
    CategoryID              VARCHAR(50),
    Duration                TIME,
    CreatorID               VARCHAR(50),
    CreateDate              DATE
);

CREATE TABLE ExamQuestion (
    ExamID                  VARCHAR(50),
    QuestionID              VARCHAR(50)
);
