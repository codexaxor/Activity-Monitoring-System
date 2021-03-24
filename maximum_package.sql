SET SERVEROUTPUT ON;
SET VERIFY OFF;
SET FEEDBACK ON;


CREATE OR REPLACE PACKAGE maximum_package AS

	PROCEDURE max_ram;
	PROCEDURE max_Network;
	PROCEDURE max_CPU;
	PROCEDURE max_Handles;

END maximum_package;
/


CREATE OR REPLACE PACKAGE BODY maximum_package AS

	PROCEDURE max_ram IS

	BEGIN
		dbms_output.put_line('Maximum Ram Consuming Applications'); 
		dbms_output.put_line('----------------------------------'); 
		dbms_output.put_line('----------------------------------'); 
		dbms_output.put_line('App Name'||chr(9)||'Ram (MegaByte)');
		dbms_output.put_line('----------------------------------'); 
		
		FOR idx IN (select T.Image_Name, SUM(memory) as sm_v from  task@PC_1 T group by T.Image_Name order by sm_v desc) LOOP

			dbms_output.put_line(idx.Image_Name||' === '||idx.sm_v/1024||' MB');
			
		END LOOP;
		
	END max_ram;

	PROCEDURE max_Network IS
		
	BEGIN
		dbms_output.put_line('Maximum Network Allocated Programes'); 
		dbms_output.put_line('-----------------------------------'); 
		dbms_output.put_line('PROCESS ID' || CHR(9) || 'PROCESS NAME');
		dbms_output.put_line('-----------------------------------');
		FOR idx IN ( select N.PID, P.Process_Name from network@PC_1 N INNER JOIN process@PC_1 P ON N.PID = P.PID ) LOOP
			
			if idx.PID != 0 then
				dbms_output.put_line(idx.PID || CHR(9) || idx.Process_Name);
			end if;
			
		END LOOP;
		
	END max_Network;	
	
	
	PROCEDURE max_CPU IS

	BEGIN
		dbms_output.put_line('Maximum CPU Consuming Applications'); 
		dbms_output.put_line('----------------------------------'); 
		dbms_output.put_line('Process Name'||chr(9)||'CPU Time');
		dbms_output.put_line('----------------------------------'); 
		
		FOR idx IN (select Process_Name, sum(CPU) as smms from  process@PC_1  group by Process_Name order by smms desc) LOOP

			dbms_output.put_line(idx.Process_Name||' ==== '||idx.smms);
			
		END LOOP;
		
	END max_CPU;
	
	
	PROCEDURE max_Handles IS

	BEGIN
		dbms_output.put_line('Maximum Thread Allocated Applications'); 
		dbms_output.put_line('----------------------------------'); 
		dbms_output.put_line('Process Name'||chr(9)||'Thread Num');
		dbms_output.put_line('----------------------------------'); 
		
		FOR idx IN (select Process_Name, sum(Handles) as hd from  process@PC_1  group by Process_Name order by hd desc) LOOP

			dbms_output.put_line(idx.Process_Name||' ==== '||idx.hd);
			
		END LOOP;
		
	END max_Handles;
	
	
	
	
	
END maximum_package;
/

