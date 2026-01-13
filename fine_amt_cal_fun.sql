/*--------------------------------------------------------------------------------------

  FUNCTION    : fine_amt_cal_fun
  DESCRIPTION : This function will calculate fine amount if loan date is not null or lesser than due date
  AUTHOR      : Yukesh M 
  DATE        : 07/01/2025
  VERSION     : 1.0
-----------------------------------------------------------------------------------------*/

CREATE OR REPLACE FUNCTION fine_amt_cal_fun (
    p_loan_id NUMBER
) RETURN NUMBER AS
    v_due_date    DATE;
    v_loan_date   DATE;
    v_return_date DATE;
    v_days        NUMBER;
    v_fine_amt    NUMBER;
BEGIN
    SELECT
        due_date,
        loaned_date,
        return_date
    INTO
        v_due_date,
        v_loan_date,
        v_return_date
    FROM
        loans
    WHERE
        loan_id = p_loan_id;

    IF v_return_date IS NOT NULL OR v_return_date >= v_due_date THEN
        v_days := v_return_date - v_due_date;
    END IF;

    v_fine_amt := v_days * 2;
    RETURN round(v_fine_amt,2);
END;

/
