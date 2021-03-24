-- initializing preprocessing steps
SET SERVEROUTPUT ON;
SET VERIFY OFF;
SET FEEDBACK  OFF;
clear screen;  

--ACCEPT X NUMBER PROMPT "Enter Choice = "
-- show primary state data

DECLARE
	
BEGIN
	dbms_output.put_line('1. High RAM Usage Apps');
	dbms_output.put_line('2. Top Network Using Apps');
	dbms_output.put_line('3. Maximum CPU usage Apps');
	dbms_output.put_line('4. Max Thread Allocating Apps');
	
END;
/


DECLARE

xx number;


BEGIN

	xx := &xx;

	--dbms_output.put_line(xx);
	
	IF ( xx = 1 ) THEN 
		maximum_package.max_ram();
	ELSIF ( xx = 2 ) THEN 
		maximum_package.max_Network;
	ELSIF ( xx = 3 ) THEN
		maximum_package.max_CPU();
	ELSIF ( xx = 4 ) THEN
		maximum_package.max_Handles();
	END IF;

END;
/

