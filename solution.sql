create database elango;
use elango;
CREATE OR REPLACE FUNCTION Count_Students_By_Dept (
    p_DepartmentID IN NUMBER
)
RETURN NUMBER
IS
    v_Count NUMBER;
BEGIN
    SELECT COUNT(*)
    INTO v_Count
    FROM Student
    WHERE DepartmentID = p_DepartmentID;

    RETURN v_Count;
END;
/
