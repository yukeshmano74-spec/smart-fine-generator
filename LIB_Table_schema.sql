/*--------------------------------------------------------------------------------------

  TABLE       : BOOKS
  DESCRIPTION : This table stores details of books.
  PRIMARY KEY : book_id
  CREATED BY  : Yukesh M 
  DATE        : 07/01/2025
  VERSION     : 1.0
-----------------------------------------------------------------------------------------*/
CREATE TABLE books (
    book_id    NUMBER PRIMARY KEY,
    book_title VARCHAR2(100),
    author     VARCHAR2(100),
    status     VARCHAR2(50) CHECK ( status IN ( 'Available', 'Loaned')),
    return_date date
);

/

/*--------------------------------------------------------------------------------------

  TABLE       : MEMBERS
  DESCRIPTION : This table stores details of MEMBERS
  PRIMARY KEY : member_id
  FOREIGN KEY : book_id
  CREATED BY  : Yukesh M 
  DATE        : 07/01/2025
  VERSION     : 1.0
-----------------------------------------------------------------------------------------*/
CREATE TABLE members (
    member_id   NUMBER PRIMARY KEY,
    member_name VARCHAR2(100),
    book_id     NUMBER
        REFERENCES books ( book_id ),
    member_tier VARCHAR2(100) DEFAULT 'Regular' CHECK ( member_tier IN ( 'Regular', 'Premium', 'Student' ) ),
    status      VARCHAR2(50) DEFAULT 'Active' CHECK ( status IN ( 'Active', 'Inactive' ) )
);

/

/*--------------------------------------------------------------------------------------

  TABLE       : LOANS
  DESCRIPTION : This table stores details of LOANS
  PRIMARY KEY : loan_id
  FOREIGN KEY : book_id,member_id
  CREATED BY  : Yukesh M 
  DATE        : 07/01/2025
  VERSION     : 1.0
-----------------------------------------------------------------------------------------*/
CREATE TABLE loans (
    loan_id     NUMBER  PRIMARY KEY,
    book_id     NUMBER
        REFERENCES books ( book_id ),
    member_id   NUMBER
        REFERENCES members ( member_id ),
    loaned_date DATE DEFAULT sysdate,
    due_date    DATE,
    return_date DATE,
    fine_amount NUMBER
);

/

/*--------------------------------------------------------------------------------------

  SEQUENCE    : loan_id_seq
  DESCRIPTION : This sequence generates primary key in LOANS table.
  CREATED BY  : Yukesh M 
  DATE        : 07/01/2025
  VERSION     : 1.0
-----------------------------------------------------------------------------------------*/
create sequence loan_id_seq start with 10;

/