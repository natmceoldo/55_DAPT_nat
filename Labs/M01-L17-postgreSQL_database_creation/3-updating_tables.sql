UPDATE customers
	SET cust_email = 'ppicasso@gmail.com' WHERE cust_name = 'Pablo Picasso';
	
UPDATE customers	
	SET cust_email = 'lincoln@us.gov' WHERE cust_name = 'Abraham Lincoln';
	
UPDATE customers
	SET cust_email = 'hello@napoleon.me' WHERE cust_name = 'Napoléon Bonaparte';
	
UPDATE customers
	SET cust_address = '120 SW 8th St Miami United States' WHERE cust_name = 'Abraham Lincoln';
	
DELETE FROM cars WHERE car_id = '4';