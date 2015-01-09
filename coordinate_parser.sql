DROP function if exists coordinate_parser;
DELIMITER $$
CREATE FUNCTION coordinate_parser (latitude DOUBLE ,longitude DOUBLE) RETURNS varchar(255)
BEGIN
DECLARE coordinate CHAR(255) ;
set coordinate = "";
set coordinate = CONCAT(latitude, ',', longitude);
RETURN coordinate;
END$$
DELIMITER;