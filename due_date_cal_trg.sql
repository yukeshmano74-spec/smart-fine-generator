/*--------------------------------------------------------------------------------------

  TRIGGER     : due_date_cal_trg
  DESCRIPTION : This trigger will calculate due date based on loan date.
  AUTHOR      : Yukesh M 
  DATE        : 07/01/2025
  VERSION     : 1.0
-----------------------------------------------------------------------------------------*/

CREATE OR REPLACE TRIGGER due_date_cal_trg BEFORE
    INSERT ON loans
    FOR EACH ROW
BEGIN
    IF :new.loaned_date IS NULL THEN
        :new.loaned_date := sysdate;
    END IF;

    :new.due_date := :new.loaned_date + 14;
END;

/
