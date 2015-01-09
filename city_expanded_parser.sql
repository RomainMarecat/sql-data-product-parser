DROP function if exists city_expanded_parser;
DELIMITER $$
CREATE FUNCTION city_expanded_parser (city CHAR(255), postcode INT(11)) RETURNS varchar(255)
BEGIN
DECLARE city_expanded CHAR(255) ;
set city_expanded = "";
set postcode = SUBSTRING(postcode, -5, 2);
set city_expanded = city + " (" + postcode + ")";
RETURN city_expanded;
END$$
DELIMITER;