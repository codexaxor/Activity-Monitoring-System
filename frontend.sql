CLEAR SCREEN;

CREATE OR REPLACE VIEW COMMUNICATION(ID, METHOD, STATUS, FROM_, TO_) AS 
SELECT C.PID, C.Protocol, C.Current_State, C.Local_Address, C.Foreign_Address FROM network@PC_1 C;

CREATE OR REPLACE VIEW THREADS(ID, NAME, CPU_TIME, OBJECT_NO) AS 
SELECT T.PID, T.Process_Name, T.CPU, T.Handles FROM process@PC_1 T;

CREATE OR REPLACE VIEW PROGRAMMES(ID, NAME, RAM_USAGE) AS 
SELECT P.PID, P.Image_Name, P.memory FROM task@PC_1 P;


select * from PROGRAMMES;
select * from THREADS;
select * from COMMUNICATION;


