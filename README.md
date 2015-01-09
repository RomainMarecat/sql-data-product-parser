# Test on mysql db 

## 1) Install all functions to parse data
LIKE

	use routing_parser.sql;

## 2) Execute select on products
	use select.sql;
It's running ! but ...
	
## 3) Performance of MySQL functions
WITH LEFT JOIN ON Variant
	50 rows selected -> 3 seconds	
	100 rows selected -> 6 seconds	
	1000 rows selected -> 60 seconds

So

	20000 rows selected -> 20 minutes	

WITH INNER JOIN ON Variant 

	total of 23096, Processing in 0.5594 sec)