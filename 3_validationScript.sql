set echo on

spool /Users/amitsrivastava/Documents/Bing_Assignments/DBMS/Test/5_validateOutput.txt

-- question2
exec RetailBusiness_Package.show_customers();
exec RetailBusiness_Package.show_employees();
exec RetailBusiness_Package.show_products();
exec RetailBusiness_Package.show_purchases();
exec RetailBusiness_Package.show_logs();

--question3
execute RetailBusiness_Package.purchases_made('kfhc');
execute RetailBusiness_Package.purchases_made('c00');
execute RetailBusiness_Package.purchases_made('c006');

--question4 Method1
DECLARE
    pr_id purchases.pid%type;
    customer_count number;     
BEGIN
       pr_id := 'p002';
       customer_count := RetailBusiness_Package.number_customers(pr_id);
       dbms_output.put_line('Number of customers:' || customer_count);
END;
/

--question4 Method2
--select RetailBusiness_Package.number_customers('p009') from dual;

--question5 / Triggers
exec RetailBusiness_Package.add_customer('c009','Lisa','777-555-1234');
exec RetailBusiness_Package.show_customers();
exec RetailBusiness_Package.show_logs();

-- Q6-I
exec RetailBusiness_Package.add_purchase('e01', 'p006', 'c010', 5, 17.96);
-- c010 is invalid
exec RetailBusiness_Package.add_purchase('e04', 'p008', 'c005', 12, 17.96); 
-- correct
exec RetailBusiness_Package.add_purchase('e01', 'p006', 'c002', 8, 17.96); 
--correct
exec RetailBusiness_Package.show_logs();
exec RetailBusiness_Package.show_purchases();
exec RetailBusiness_Package.show_products();
exec RetailBusiness_Package.show_customers();

-- Q6-II (Procedure Exception) Validate insufficient quantity
exec RetailBusiness_Package.show_products();
exec RetailBusiness_Package.add_purchase('e02', 'p002', 'c008', 10, 240);
exec RetailBusiness_Package.add_purchase('e02', 'p002', 'c008', 2, 240);
exec RetailBusiness_Package.add_purchase('e02', 'p002', 'c008', 15, 200);
exec RetailBusiness_Package.show_purchases();

spool off;
