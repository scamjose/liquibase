//
DROP PROCEDURE IF EXISTS GetAlumnos //

CREATE PROCEDURE GetAlumnos()
BEGIN
    SELECT *  FROM Alumno;
END //