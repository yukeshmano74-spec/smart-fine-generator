
/*--------------------------------------------------------------------------------------

  PROCEDURE   : update_loans_prc
  DESCRIPTION : This procedure will insert record into loans table if the book is loaned. 
  AUTHOR      : Yukesh M 
  DATE        : 07/01/2025
  VERSION     : 1.0
-----------------------------------------------------------------------------------------*/

CREATE OR REPLACE PROCEDURE update_loans_prc (
    p_member_id NUMBER,
    p_book_id   NUMBER
) AS
    v_status VARCHAR2(50);
BEGIN
    SELECT
        status
    INTO v_status
    FROM
        books
    WHERE
            book_id = p_book_id
        AND status = 'Loaned';

    IF v_status = 'Loaned' THEN
        INSERT INTO loans (
            loan_id,
            book_id,
            member_id
        ) VALUES (
            loan_id_seq.NEXTVAL,
            p_book_id,
            p_member_id
        );

    END IF;

EXCEPTION
    WHEN no_data_found THEN
        dbms_output.put_line('Error occured while insertion '
                             || ''
                             || p_book_id
                             || p_member_id);
END;

