-- initializing preprocessing steps
SET SERVEROUTPUT ON;
SET VERIFY OFF;
SET FEEDBACK OFF;
clear screen;  

	
BEGIN
	dbms_output.put_line('1. Show Active Process');
	dbms_output.put_line('2. Show Active Threads');
	dbms_output.put_line('3. Show Active Networks');
END;
/



DECLARE

	xx number;
	k number;

BEGIN
	xx := &xx;
	IF ( xx = 1 ) THEN
	k := 0;	
		dbms_output.put_line(chr(9)||'All the Running Process');
		dbms_output.put_line(chr(9)||'************************');
		FOR idx IN (select * from (select Process_Name from process@PC_1 where SI = 1 group by Process_Name order by Process_Name)) LOOP
			dbms_output.put_line(chr(9)||idx.Process_Name);
			k := k + 1;
		END LOOP;
		dbms_output.put_line(chr(9));
		dbms_output.put_line(chr(9)||'************************');
		dbms_output.put_line(chr(9)||'Total '||k||' Process runnig');
		
	ELSIF ( xx = 2 ) THEN
	k := 0;	
		dbms_output.put_line(chr(9)||'All the Running Threads');
		dbms_output.put_line(chr(9)||'************************');
		FOR idx IN (select * from (select Image_Name from task@PC_1 where session_id = 1 group by Image_Name order by Image_Name)) LOOP
			dbms_output.put_line(chr(9)||idx.Image_Name);
			k := k + 1;
		END LOOP;
		dbms_output.put_line(chr(9));
		dbms_output.put_line(chr(9)||'************************');
		dbms_output.put_line(chr(9)||'Total '||k||' Threads runnig');
		
		
	ELSIF ( xx = 3 ) THEN
	k := 0;	
		
		dbms_output.put_line(chr(9)||'All the Running Networks');
		dbms_output.put_line(chr(9)||'************************');
		
		FOR idx IN (select * from (select PID from network@PC_1 where Current_State = 'ESTABLISHED' group by PID order by PID)) LOOP
			dbms_output.put_line(chr(9)||idx.PID);
			k := k + 1;
		END LOOP;

		dbms_output.put_line(chr(9));
		dbms_output.put_line(chr(9)||'************************');
		dbms_output.put_line(chr(9)||'Total '||k||' Network runnig');	
	
	
	ELSIF ( xx = 4 ) THEN
	k := 0;	
		dbms_output.put_line(chr(9)||'All the Running Threads');
		dbms_output.put_line(chr(9)||'************************');
		FOR idx IN (select * from (select task.Image_Name from task@PC_1 where session_id = 1 group by Image_Name order by Image_Name)) LOOP
			dbms_output.put_line(chr(9)|| idx.Image_Name);
			k := k + 1;
		END LOOP;
		dbms_output.put_line(chr(9));
		dbms_output.put_line(chr(9)||'************************');
		dbms_output.put_line(chr(9)||'Total '||k||' Threads runnig');
		
	END IF;
END;


/

