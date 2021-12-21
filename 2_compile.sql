set echo on

spool /Users/amitsrivastava/Documents/Bing_Assignments/DBMS/Test/4_result_createTables.txt

start 1_drop.sql
-- Note: Update sequence before table to use in insert purchases
start retailBusiness_sequences.sql

-- Create tables
start RBMSTablesScript21Fall.sql

start retailBusiness_triggers.sql
start retailBusiness_package.sql

spool off;