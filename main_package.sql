SET SERVEROUTPUT ON;
SET VERIFY OFF;
SET FEEDBACK ON;


CREATE OR REPLACE PACKAGE main_package AS

	PROCEDURE process;
	PROCEDURE task;
	PROCEDURE network;

END main_package;
/


CREATE OR REPLACE PACKAGE BODY main_package AS


	PROCEDURE process IS
	
		cnt integer;
		MM integer;
		
	BEGIN
	
	
	
		FOR idx IN ( select P.Process_Name, N.Current_State,P.PID from process@PC_1 P FULL OUTER JOIN network@PC_1 N ON P.PID = N.PID   ) LOOP
			if idx.Current_State IS NULL then
				cnt := cnt + 1;
				--dbms_output.put_line(idx.Current_State||chr(9)||idx.Process_Name);
				dbms_output.put_line(cnt||chr(9)||idx.PID||chr(9)||idx.Process_Name||chr(9)||'Invalid');
			elsif idx.Current_State = 'ESTABLISHED' AND idx.PID IS NOT NULL then
				cnt := cnt + 1;
				--dbms_output.put_line(idx.Current_State||chr(9)||idx.Process_Name);
				dbms_output.put_line(cnt||chr(9)||idx.PID||chr(9)||idx.Process_Name||chr(9)||'Active Connection');
			
			end if;
			
		END LOOP;
	
		/*
		cnt := 0;
		MM := 0;
		dbms_output.put_line('NO.' || chr(9) || 'Application Name');
		dbms_output.put_line('------------------------------------');
		
		FOR idx IN ( select Image_Name, sum(memory) from task@PC_1  group by Image_Name ) LOOP
			cnt := cnt + 1;
			dbms_output.put_line(cnt||chr(9)||idx.Image_Name);
		END LOOP;
		*/
	END process;


	PROCEDURE task	IS
	
		cnt_n integer;
		cnt_o integer;
	BEGIN
		
		dbms_output.put_line('------------------------------------');
		dbms_output.put_line('------------------------------------');
		dbms_output.put_line('Network Connected Threads');
		dbms_output.put_line('------------------------------------');
		dbms_output.put_line('NO.' || chr(9) ||'ID' || chr(9) || 'Threrad Name');
		dbms_output.put_line('------------------------------------');
		cnt_n := 0;
		FOR idx IN (select P.Process_Name, N.Current_State,P.PID from process@PC_1 P INNER JOIN network@PC_1 N ON P.PID = N.PID ) LOOP
			
			if idx.Current_State = 'ESTABLISHED' then
				cnt_n := cnt_n + 1;
				dbms_output.put_line(cnt_n||chr(9)||idx.PID||chr(9)||idx.Process_Name);
			end if;
			
		END LOOP; 
		
		-- new blank line
		--dbms_output.new_line();
		
		
		dbms_output.put_line('------------------------------------');
		dbms_output.put_line('------------------------------------');
		dbms_output.put_line('Offline Threads');
		dbms_output.put_line('------------------------------------');
		dbms_output.put_line('NO.' || chr(9) ||'ID' || chr(9) || 'Threrad Name');
		dbms_output.put_line('------------------------------------');
		cnt_o := 0;
		FOR idx IN ( select P.Process_Name, N.Current_State,P.PID from process@PC_1 P FULL OUTER JOIN network@PC_1 N ON P.PID = N.PID   ) LOOP
		
			--dbms_output.put_line('ok');
			if idx.Current_State IS NULL then
				cnt_o := cnt_o + 1;
				--dbms_output.put_line(idx.Current_State||chr(9)||idx.Process_Name);
				dbms_output.put_line(cnt_o||chr(9)||idx.PID||chr(9)||idx.Process_Name);
			end if;
			
		END LOOP; 
	
		
	END task;


	PROCEDURE network IS
	
		Total_Connetion integer;
		Total_Outgoing_Connetion integer;
		Established_Connetion integer;
		Lost_Connection integer;
		Wait_Connection integer;

	BEGIN
	
		-- total Conenction 
		Total_Connetion := 0;
		FOR idx IN ( select * from network@PC_1 ) LOOP
			Total_Connetion := Total_Connetion + 1 ;
		END LOOP;
		--dbms_output.put_line(Total_Connetion);
	
		-- outgoing Conenction 
		Total_Outgoing_Connetion := 0;
		FOR idx IN ( select * from (select Foreign_Address from network@PC_1) group by Foreign_Address ) LOOP
			Total_Outgoing_Connetion := Total_Outgoing_Connetion + 1 ;
		END LOOP;
		--dbms_output.put_line(Total_Outgoing_Connetion);
		
		
		-- established connection
		Established_Connetion := 0;
		FOR idx IN ( select * from network@PC_1 where Current_State = 'ESTABLISHED'  ) LOOP
			Established_Connetion := Established_Connetion + 1 ;
			
		END LOOP;
		--dbms_output.put_line(Established_Connetion);


		-- network lost
		Lost_Connection := 0;
		FOR idx IN ( select * from network@PC_1 where Current_State = 'CLOSE_WAIT'  ) LOOP
			Lost_Connection := Lost_Connection + 1 ;
			
		END LOOP;
		--dbms_output.put_line(Lost_Connection);
		
		
		-- network in pipelining
		Wait_Connection := 0;
		FOR idx IN ( select * from network@PC_1 where Current_State = 'TIME_WAIT'  ) LOOP
			Wait_Connection := Wait_Connection + 1 ;
			
		END LOOP;
		--dbms_output.put_line(Wait_Connection);

			
		dbms_output.put_line('*******************************************************');
		
		dbms_output.put_line('Total'||CHR(9)||'Outgoing'||CHR(9)||'Established'||CHR(9)||'Lost'||CHR(9)||'Waiting');	
		dbms_output.put_line(Total_Connetion||CHR(9)||Total_Outgoing_Connetion||CHR(9)||Established_Connetion||CHR(9)||Lost_Connection||CHR(9)||Wait_Connection);	
		
		dbms_output.put_line('*******************************************************');
		
	END network;
	
	
END main_package;
/

