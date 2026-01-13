/*--------------------------------------------------------------------------------------
  Data Insertion
  AUTHOR      : Yukesh M 
  DATE        : 07/01/2025
  VERSION     : 1.0
-----------------------------------------------------------------------------------------*/
--Insertion into Books table 

INSERT INTO BOOKS (BOOK_ID,book_title,author,status) VALUES (1,'God Father','Mario Puzo','Available');
INSERT INTO BOOKS (BOOK_ID,book_title,author,status) VALUES (2,'The Alchemist','Paulo Coelho','Available');
INSERT INTO BOOKS (BOOK_ID,book_title,author,status) VALUES (3,'Ikigai','Hector Garcia','Loaned');
INSERT INTO BOOKS (BOOK_ID,book_title,author,status) VALUES (4,'Odyssey','Homer','Loaned');
INSERT INTO BOOKS (BOOK_ID,book_title,author,status) VALUES (5,'Rich dad Poor Dad','Robert Kiyosaki','Loaned');

/*-----------------------------------------------------------------------------------------*/
--Insertion into members table 

INSERT INTO MEMBERS (member_id,member_name,book_id) VALUES (1,'Yukesh M',1);
INSERT INTO MEMBERS (member_id,member_name,book_id) VALUES (2,'Mukilan K',2);
INSERT INTO MEMBERS (member_id,member_name,book_id) VALUES (3,'Wesley',5);
INSERT INTO MEMBERS (member_id,member_name,book_id) VALUES (4,'Anand',4);
INSERT INTO MEMBERS (member_id,member_name,book_id) VALUES (5,'Gabriel',3);

/*-----------------------------------------------------------------------------------------*/