CREATE OR REPLACE PACKAGE find_package AS

	-- function define
	FUNCTION Process_Retrive(Z IN VARCHAR2)
	RETURN VARCHAR2;
	
	
	-- procedure define
	PROCEDURE Running_Package(A IN VARCHAR2);
	
END find_package;
/


CREATE OR REPLACE PACKAGE BODY find_package AS
	
	
	--- function body
	FUNCTION Process_Retrive(Z IN VARCHAR2)
	RETURN VARCHAR2
	IS 
		B VARCHAR2(40);
		
		
	BEGIN
		SELECT DISTINCT P.Image_Name INTO B FROM task@PC_1 P WHERE P.Image_Name = Z;
		--SELECT P.Image_Name INTO B FROM task@PC_1 P WHERE P.Image_Name LIKE Z+'%';
		RETURN B;
	END Process_Retrive;
	
	--- process body
	PROCEDURE Running_Package(A IN VARCHAR2) IS
		mm VARCHAR2(40);
		DD VARCHAR2(40);
	BEGIN
		
		DD := LOWER(A);
		
		mm := Process_Retrive(DD);
		
		dbms_output.put_line('Process [ '||A|| ' ] is found!!'); 
		
		EXCEPTION 
			WHEN NO_DATA_FOUND THEN
            dbms_output.put_line('There is no Process named :: ' || A);	

	END Running_Package;

END find_package;
/
