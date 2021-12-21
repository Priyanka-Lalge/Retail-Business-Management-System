

drop PACKAGE RetailBusiness_Package;

/* question 1: sequence to generate unique values for pur#*/
DROP SEQUENCE seqpur#;

/* question 1: sequence to generate unique values for log#*/
DROP SEQUENCE seqlog#;

/* question 2: procedures to show the tables */
drop procedure show_customers;
drop procedure show_employees;
drop procedure show_logs;
drop procedure show_products;
drop procedure show_purchases; 

/* question 3: procedure to return the name of the customer as well as every purchase */ 
drop procedure purchases_made;

/* question 4: function to report the number of customers who have purchased the product identified by the pid */ 
drop function number_customers;

/* question 5: procedure for adding tuples to the Customers table */ 
drop procedure add_customer;

/* question 6: procedure for adding tuples to the Purchases table */ 
drop procedure add_purchase;

/* question 7: triggers to add tuples to the Logs table */
drop trigger insert_customers;
drop trigger insert_purchases;
drop trigger update_lastvisitdate_customers;
drop trigger update_visitsmade_customers;
drop trigger update_products;
drop trigger purchases_add;

