
CREATE DATABASE CommitteeDB;
USE CommitteeDB;
CREATE TABLE Committees (
    CommitteeID INT PRIMARY KEY,
    CommitteeName VARCHAR(100),
    Description TEXT
);
CREATE TABLE Members (
    MemberID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    CommitteeID INT,
    FOREIGN KEY (CommitteeID) REFERENCES Committees(CommitteeID)
);
CREATE TABLE Meetings (
    MeetingID INT PRIMARY KEY,
    CommitteeID INT,
    MeetingDate DATE,
    MeetingTime TIME,
    Location VARCHAR(100),
    Agenda TEXT,
    FOREIGN KEY (CommitteeID) REFERENCES Committees(CommitteeID)
);
INSERT INTO Committees (CommitteeID, CommitteeName, Description)
VALUES
(1, 'Finance Committee', 'Responsible for managing the financial activities.'),
(2, 'HR Committee', 'Handles human resources and staff-related matters.'),
(3, 'Event Planning Committee', 'Organizes and plans events.');
INSERT INTO Members (MemberID, FirstName, LastName, Email, CommitteeID)
VALUES
(1, 'Anna', 'Smith', 'anna.smith@example.com', 1),
(2, 'John', 'Doe', 'john.doe@example.com', 2),
(3, 'Jane', 'Doe', 'jane.doe@example.com', 3),
(4, 'Alice', 'Johnson', 'alice.johnson@example.com', 1),
(5, 'Bob', 'Brown', 'bob.brown@example.com', 3);
INSERT INTO Meetings (MeetingID, CommitteeID, MeetingDate, MeetingTime, Location, Agenda)
VALUES
(1, 1, '2025-01-20', '10:00:00', 'Conference Room A', 'Budget review.'),
(2, 2, '2025-01-21', '11:00:00', 'Conference Room B', 'Staff evaluations.'),
(3, 3, '2025-01-22', '14:00:00', 'Conference Room C', 'Event planning for Q1.');
SELECT c.CommitteeName, m.FirstName, m.LastName, m.Email
FROM Committees c
JOIN Members m ON c.CommitteeID = m.CommitteeID;
SELECT c.CommitteeName, me.MeetingDate, me.MeetingTime, me.Location, me.Agenda
FROM Committees c
JOIN Meetings me ON c.CommitteeID = me.CommitteeID;