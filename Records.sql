CREATE TABLE Author (
    AuthorID INT PRIMARY KEY,
    AuthorName VARCHAR(100)
);

CREATE TABLE Book (
    BookID INT PRIMARY KEY,
    Title VARCHAR(100),
    AuthorID INT,
    FOREIGN KEY (AuthorID) REFERENCES Author(AuthorID)
);

CREATE TABLE Borrower (
    BorrowerID INT PRIMARY KEY,
    BorrowerName VARCHAR(100)
);

CREATE TABLE Loan (
    LoanID INT PRIMARY KEY,
    BorrowerID INT,
    BookID INT,
    LoanDate DATE,
    FOREIGN KEY (BorrowerID) REFERENCES Borrower(BorrowerID),
    FOREIGN KEY (BookID) REFERENCES Book(BookID)
);

-- Insert authors
INSERT INTO Author (AuthorID, AuthorName)
VALUES (1, 'J.K. Rowling'), (2, 'George Orwell'), (3, 'Jane Austen');

-- Insert books
INSERT INTO Book (BookID, Title, AuthorID)
VALUES (1, 'Harry Potter', 1), 
       (2, '1984', 2), 
       (3, 'Pride and Prejudice', 3),
       (4, 'Animal Farm', 2), 
       (5, 'Emma', 3);

-- Insert borrowers
INSERT INTO Borrower (BorrowerID, BorrowerName)
VALUES (1, 'John Doe'), (2, 'Jane Smith'), (3, 'Alice Johnson');

-- Insert loan records
INSERT INTO Loan (LoanID, BorrowerID, BookID, LoanDate)
VALUES (1, 1, 1, '2024-09-01'), 
       (2, 2, 3, '2024-09-02'), 
       (3, 1, 2, '2024-09-03');
