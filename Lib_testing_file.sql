SET SERVEROUTPUT ON;

--1.Check the table records 

select * from books where status = 'Loaned';
SELECT * FROM LOANS;

--2.Run the procedure to insert records loans table 

BEGIN 
fine_amt_gen_pkg.update_loans_prc (5,3);
END;

--3.Check the table records if inserted in the table 

SELECT * FROM LOANS;

--4.update the return date 

update loans set RETURN_DATE = '27-JAN-2026' WHERE LOAN_ID = 10;

--5.insert fine amt into the loans table 

BEGIN 
fine_amt_gen_pkg.fine_amt_insert_prc (10,3);
END;

--5.1. check if function returns values 

select fine_amt_gen_pkg.fine_amt_cal_fun (10) as fine_amt from dual;
