-- initializing preprocessing steps
SET SERVEROUTPUT ON;
SET VERIFY OFF;
SET FEEDBACK  OFF;
clear screen;  


DECLARE
	
BEGIN
	dbms_output.put_line('1. Show Process Statics');
	dbms_output.put_line('2. Show Threads Statics');
	dbms_output.put_line('3. Show Network Statics');
	
END;
/


DECLARE

xx number;


BEGIN

	xx := &xx;

	--dbms_output.put_line(xx);
	
	IF ( xx = 1 ) THEN 
		main_package.process();
	ELSIF ( xx = 2 ) THEN 
		main_package.task();
	ELSIF ( xx = 3 ) THEN
		main_package.network();
	END IF;

END;


/

