DROP TABLE IF EXISTS BORROW_BOOKS; 
DROP TABLE IF EXISTS BOOKS; 

CREATE TABLE BOOKS (
    book_id CHAR(5) PRIMARY KEY, 
    book_name VARCHAR(200) NOT NULL, 
    book_quantity INT,
    book_rent DECIMAL (10,2) DEFAULT 5000.00,
    input_date DATE,
    
    CHECK (book_quantity >= 0)
);

CREATE TABLE BORROW_BOOKS (
    br_code INT AUTO_INCREMENT PRIMARY KEY, 
    book_id CHAR(5) NOT NULL, 
    NgayMuon DATE,
    
    CONSTRAINT FK_Borrow_Books 
    FOREIGN KEY (book_id) REFERENCES BOOKS(book_id)
);

SELECT * FROM BOOKS; 
SELECT * FROM BORROW_BOOKS;
