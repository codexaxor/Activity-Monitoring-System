SET SERVEROUTPUT ON;
SET VERIFY OFF;
SET FEEDBACK OFF;
clear screen;

accept vstring prompt "Please Enter the name of a Programme : ";

DECLARE
	kk varchar2(40);
BEGIN
		
	kk := '&vstring';
	
	find_package.Running_Package(kk);
	
END;
/


/*
accept kstring prompt "Please Enter the name of a process : ";

DECLARE
	kk varchar2(40);
BEGIN
		
	kk := '&kstring';
	
	--find_package.Running_Package(kk);
	
	
	dbms_output.put_line(kk); 

	--dbms_output.put_line(kk);

END;
/

*/