SET SERVEROUTPUT ON;

/
--Level 1 

DECLARE 

v_greeting varchar2(100);

BEGIN 

v_greeting := 'Hello, welcome to the world of PL/SQL happy learning';

DBMS_OUTPUT.PUT_LINE (v_greeting);

END;
/

--Level 2

DECLARE 

v_score number := 35;

BEGIN 

IF v_score >= 50 then 

dbms_output.put_line ('Pass');

ELSE dbms_output.put_line ('Fail');

end if;

end;
/

--Level3

DECLARE

v_counter number :=1;

BEGIN 

LOOP

V_counter := v_counter+1;

EXIT WHEN v_counter > 5;

END LOOP;
/

--Level3.1

DECLARE

v_counter number :=10;

begin 

loop 
v_counter := v_counter - 1;
exit when v_counter = 0;

end loop;
dbms_output.put_line (v_counter);
dbms_output.put_line ('Lift Off !');
END;
/



DBMS_OUTPUT.PUT_LINE(V_COUNTER);

END;

/

--Level4

DECLARE

V_NUMBER NUMBER := 1;
v_number_result number;

BEGIN 

While V_NUMBER <100 LOOP

v_number_result := v_number *2;
DBMS_OUTPUT.PUT_LINE(V_NUMBER);
DBMS_OUTPUT.PUT_LINE(v_number_result);

end loop;

end;































