/*--------------------------------------------------------------------------------------

  PROCEDURE   : fine_amt_insert_prc
  DESCRIPTION : This procedure will insert fine amount into loans table if the book is loaned. 
  AUTHOR      : Yukesh M 
  DATE        : 07/01/2025
  VERSION     : 1.0
-----------------------------------------------------------------------------------------*/

CREATE OR REPLACE PROCEDURE fine_amt_insert_prc (
    p_loan_id NUMBER,
    p_book_id NUMBER
) AS
    v_fine_amt    NUMBER;
    v_return_date DATE;
    v_due_date    DATE;
BEGIN
    SELECT
        fine_amount,
        return_date,
        due_date
    INTO
        v_fine_amt,
        v_return_date,
        v_due_date
    FROM
        loans
    WHERE
        loan_id = p_loan_id;

    IF v_return_date IS NOT NULL OR v_return_date > v_due_date THEN
        v_fine_amt := fine_amt_cal_fun(p_loan_id);
    END IF;

    update loans set fine_amount = v_fine_amt where loan_id = p_loan_id;

Exception
    WHEN no_data_found THEN
        dbms_output.put_line('Error while data insertion' || p_loan_id);
END; 