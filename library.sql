CREATE TABLE Books_lm(
    Id INT PRIMARY KEY,
    Title TEXT,
    Genre TEXT,
    Author TEXT,
    Qty INTEGER
)

CREATE TABLE Users_lm(
    Id INT PRIMARY KEY,
    First_Name TEXT,
    Last_Name TEXT,
    Email VARCHAR(200) UNIQUE NOT NULL 
)

CREATE TABLE Check_Out_lm(
    Id INT PRIMARY KEY,
    Books_Id INT,
    User_Id INT,
    Checkout_Date TEXT,
    Return_date DATETIME,
    FOREIGN KEY (Books_Id) REFERENCES
    Books_lm(Id),
    FOREIGN KEY (User_Id) REFERENCES
    Users_lm(Id)
)

INSERT INTO Books_lm (Id,Title,Genre,Author)
VALUES (1, 'The old man and The Sea', 'Fiction', 'Ernest Hemingway')


UPDATE Books_lm
SET Qty = 50
WHERE Id = 1

SELECT * FROM Books_lm

INSERT INTO Books_lm 
VALUES 
(2, 'Tuesdays With Maury', 'Fiction', 'Mitch Albom',200),
(3, 'Rich Dad Poor Dad', 'Self Help', 'Robert Kiyosaki',40),
(4, 'Tales of 2 Cities', 'Fiction', 'Charles Dickens', 60)

SELECT Title
FROM Books_lm
WHERE Genre in ('Fiction', 'Self Help')