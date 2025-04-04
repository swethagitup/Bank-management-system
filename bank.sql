-- database creation --
create database Bank_management;
-- activate the database --
use Bank_management;
-- creating a table --
create table customer_detail(customer_id int primary key,Name varchar(45),Address varchar(85),contact varchar(15),Email varchar(45),D_O_B date );
alter table customer_detail drop column last_name;
alter table customer_detail add column last_name varchar(45) after first_name;
-- to display the table--
select*from customer_detail;
create table Account_details(Account_No int primary key, Account_type varchar(20),Balance decimal(15,2),
customer_id int, constraint FK_Account foreign key (customer_id) references customer_detail(customer_id));
select*from Account_details;
alter table Account_details add column Account_type varchar(20) after Account_No;
create table transaction_details(Transaction_id int primary key,Type varchar(45),Amount decimal(15,2),
Date_time datetime,Account_No int,
foreign key (Account_No) references Account_details (Account_No));
select*from transaction_details;
create table loan_details(Loan_id int primary key,Loan_type varchar(55),Loan_amount decimal(10,2),
Intrest_rate decimal,customer_id int,Employee_id int,
foreign key(customer_id) references customer_detail(customer_id),
foreign key(Employee_id) references Employee_details(Employee_id));
select*from loan_details;
create table Employee_details(Employee_id int primary key,Name varchar(55),Position varchar(85),
Salary decimal(15),Branch_id int,
foreign key(Branch_id) references Branch_detail(Branch_id));
select*from Employee_details;
create table Branch_detail(Branch_id int primary key,Branch_name varchar(85),Location varchar(255));
select*from Branch_detail;
alter table Branch_detail change column  Branch_name  Bank_name varchar(45);
insert into customer_detail(customer_id,first_name,Address,contact,Email,D_O_B)
 values(1,"swetha","valaiyathur",'12345678',"gvelmurugan223@gmail.com",'2005-06-06');
 UPDATE `bank_management`.`customer_detail` SET `last_name` = 'v' WHERE (`customer_id` = '1');
insert into customer_detail(customer_id,first_name,last_name,Address,contact,Email,D_O_B) values
('2', 'John','Doe', 'chennai', '54677881', 'john@example.com', '1978-08-06'),
('3', 'Jane', 'Smith', 'Trichy','55363774', 'jane@example.com', '1998-12-09'),
('4', 'walton', 'L', 'chennai', '66667890', 'walton@example.com', '1955-04-08'),
('5', 'wilson', 'R', 'madurai', '27345679', 'wilson@example.com', '2000-06-14'),
('6', 'Thompson', 'L', 'USA', '23490867', 'thompson@example.com', '2003-05-18'),
('7', 'James', 'L', 'Africa', '90879879', 'james@example.com', '1999-04-25'),
('8', 'Peterson', 'M', 'Europe', '97869574', 'peterson@example.com', '2005-06-06'),
('9', 'Graham', 'J', 'Mumbai', '87541943', 'graham@example.com', '1998-07-13'),
('10', 'Smith', 'F', 'Arcot', '90908765', 'smith@example.com', '2009-08-17'),
('11','Russell', 'W', 'Bangalore', '89876756', 'russell@example.com', '1993-09-03'),
 ('12', 'Robit', 'T', 'Goa', '97564312', 'robit@example.com', '2001-06-06'),
 ('13', 'Xavier', 'Q', 'German', '98989784', 'xavier@example.com', '2003-03-03'),
 ('14', 'Jones', 'E', 'Sikkim', '09876987', 'jones@example.com', '1998-03-18'),
 ('15', 'Gill', 'A', 'Manipur', '78534673', 'gill@example.com', '2004-04-19'),
 ('16', 'Morgan', 'H', 'Kerala', '67688658', 'morgan@example.com', '1978-08-25'),
 ('17', 'Andrews', 'C', 'Odisha', '78685746', 'andrews@example.com', '1976-09-30'),
 ('18', ' Smith', 'E', 'Gujarat', '56756785', 'smith@example.com', '1970-06-19'),
 ('19', 'Sneha', 'F', 'Manipur', '87788986', 'sneha@example.com', '1967-12-25'),
 ('20', 'Pavithra', 'DS', 'Kolkata', '89776567', 'pavithra@example.com', '1978-01-26'),
 ('21', 'Indhumathi', 'D', 'Bhopal', '89786897', 'indhumathi@example.com', '1990-12-05'),
 ('22', 'shiva', 'G', 'Patna','shiva@gmail.com', '98868079', '1992-03-03'),
 ('23', 'vel', 'J', 'Punjab', '91235750', 'vel@example.com', '1991-01-08'),
 ('24', 'Amutha', 'M', 'Vellore', '09797696', 'amutha@example.com', '1998-08-01'),
 ('25', 'Aanandhi', 'P', 'Erode', '12346879', 'aanandhi@example.com', '1989-03-02'),
 ('26', 'Rani', 'I', 'UAE', '78978787', 'rani@example.com', '1986-06-04'),
 ('27', 'Jayashri', 'Y', 'Madurai', '54678678', 'jayashri@example.com', '1996-04-31'),
 ('28', 'Shalini', 'J', 'Namakkal', '45675786', 'shalini@example.com', '2006-07-12'),
 ('29', 'Don', 'R', 'Karur', '67878799', 'don@example.com', '2004-09-08'),
('30', 'Lee', 'H', 'Ranipet', '89080989', 'lee@example.com', '1999-09-08');
INSERT INTO `bank_management`.`Account_details` (`Account_No`, `Account_type`, `Balance`, `customer_id`) VALUES
 ('1001', 'current', '2000', '1'), ('1002', 'savings', '3999', '2'),
 ('1003', 'current', '4999', '4'),('1004', 'savings', '5999', '7'),
 ('1005', 'current', '1999', '9'),('1006', 'savings', '3456', '6'),
 ('1007', 'current', '7890', '5'), ('1008', 'savings', '4569', '3'),
 ('1009', 'current', '5674', '22'), ('1010', 'savings', '2875', '5'),
 ('1011', 'current', '2390', '12'), ('1012', 'savings', '4782', '11'),
('1013', 'current', '6256', '9'),('1014', 'savings', '7350', '15'),
 ('1015', 'current', '6688', '16'),('1016', 'savings', '2349', '17'),
 ('1017', 'current', '5937', '18'),('1018', 'savings', '8299', '19'),
 ('1019', 'current', '3458', '10'), ('1020', 'savings', '1256', '22'),
 ('1021', 'current', '7350', '23'), ('1022', 'savings', '6438', '25'),
 ('1023', 'current', '6724', '26'),('1024', 'savings', '7830', '27'),
 ('1025', 'current', '3784', '28'),('1026', 'savings', '3814', '29'),
 ('1027', 'current', '4743', '30'),('1028', 'savings', '3748', '12'),
  ('1029', 'current', '3722', '19'),('1030', 'savings', '5789', '9');
INSERT INTO `bank_management`.`transaction_details` (`Transaction_id`, `Type`, `Amount`, `Date_time`, `Account_No`) 
VALUES ('1', 'Deposit', '500.00', '2005-06-06 02:17:59', '1001'),
 ('2', 'withdrawal', '1000.67', '2005-06-09 04:07:56', '1002'),
 ('3', 'deposit', '789.89', '1996-07-11 07:08:52', '1003'),
 ('4', 'deposit', '567.92', '1986-03-11 05:22:11', '1004'),
 ('5', 'withdrawal', '567.22', '1987-04-14  03:34:25', '1005'),
 ('6', 'withdrawal', '6546.98', '1938-08-19 08:55:45', '1006'),
 ('7', 'Deposit', '658.98', '1927-05-17  08:33:17', '1007'),
  ('8', 'Deposit', '324.45', '1999-06-18 08:26:18', '1008'),
 ('9', 'withdrawal', '654.98', '2001-08-16 09:12:19', '1009'),
 ('10', 'withdrawal', '3456.98', '2002-07-18 11:07:18', '1010'),
 ('11', 'deposit', '2345.09', '2000-01-01 01:01:33', '1011'),
 ('12', 'Deposit', '4355.89', '2003-04-29 08:11:55', '1012'),
 ('13', 'withdrawal', '5678.98', '1978-07-18 12:19:17', '1013'),
 ('14', 'withdrawal', '576.77', '1956-11-28 12:11:19', '1014'),
 ('15', 'Deposit', '6332.88', '2003-05-16 08:11:18', '1015'),
 ('16', 'withdrawal', '4467.78', '2003-11-19 07:55:19', '1016'),
 ('17', 'withdrawal', '456.33', '2003-04-02 05:22:46', '1017'),
 ('18', 'Deposit', '234.4', '2002-02-22 12:11:22', '1018'),
 ('19', 'withdrawal', '6788', '2001-03-11 04:11:11', '1019'),
 ('20', 'Deposit', '5656', '1927-11-22 11:11:11', '1020'),
 ('21', 'withdrawal', '9886.89', '1976-12-23 04', '1021'),
 ('22', 'withdrawal', '6678', '1929-11-11 08:18:22', '1022'),
 ('23', 'Deposit', '456', '1988-05-19 04:11:33', '1023'), 
 ('24', 'Deposit', '8797', '1999-11-27 12:12:12', '1024'),
('25', 'withdrawal', '5677', '1925-12-04 07:22:22', '1025'),
('26', 'withdrawal', '545', '1967-11-17 02:12:19', '1026'),
 ('27', 'Deposit', '546', '1978-12-18 04:11:12', '1027'),
 ('28', 'Deposit', '7566', '1973-12-11 09:22:11 ', '1028'),
 ('29', 'withdrawal', '456', '1945-11-19 08:11:56', '1029'),
 ('30', 'Deposit', '5456', '1989-02-11 08:11:19', '1030');
 INSERT INTO `bank_management`.`Branch_detail` (`Branch_id`, `Bank_name`, `Location`) 
 VALUES ('1', 'SBI', 'vellore'), ('2', 'CBoL', 'arcot'), ('3', 'SBI', 'kalavai'),
 ('4', 'SBI', 'chennai'), ('5', 'SBI', 'arani'), ('6', 'SBI', 'nellore'), ('7', 'CBoL', 'chennai'),
 ('8', 'CBoL', 'goa'),('9', 'CBoL', 'trichy'), ('10', 'CBoL', 'vellore'),
 ('11', 'CBoL', 'arcot'),('12', 'CBoL', 'thimiri'),('13', 'canara', 'valaiyathur'), ('14', 'canara', 'delhi'),
 ('15', 'SBI', 'kalavai'), ('16', 'SBI', 'madurai'),
 ('17', 'SBI', 'bengalore'), ('18', 'SBI', 'erode'),
 ('19', 'SBI', 'selam'), ('20', 'indian', 'chuddalore'), ('21', 'axis', 't.nagar'),
 ('22', 'hdfc', 'koyambedu'),('23', 'idf', 'velachery'),
 ('24', 'carana', 'mosur'),('25', 'sbi', 'mysore'),
 ('26', 'union', 'pune'), ('27', 'city', 'kolkatha'), ('28', 'Tnc', 'jammu'),
 ('29', 'indian', 'kashmir'), ('30', 'axis', 'guindy');

 INSERT INTO `bank_management`.`Employee_details` (`Employee_id`, `Name`, `Position`, `Salary`, `Branch_id`) VALUES
 ('101', 'swetha ', 'manager', '50000', '1'),('102', 'shalini', 'employee', '6000', '2'),
 ('103', 'jayashri', 'employee', '56000', '3'),('104', 'yuvarani', 'manager', '70000', '4'),
 ('105', 'indhumathi', 'manager', '56000', '5'), ('106', 'pavithra', 'clerk', '60000', '6'),
('107', 'lee', 'ass manager', '70000', '7'),('108', 'harry', 'cashier', '5600', '8'),
 ('109', 'vel', 'asst manager', '50000', '9'),('110', 'amul', 'helper', '40000', '10'),
 ('111', 'indhu', 'watchman', '9000', '11'), ('112', 'vasuki', 'empolyee', '6000', '12'),
 ('113', 'kavipriya', 'employee', '20000', '13'), ('114', 'gomathi', 'employee', '5690', '14'),
 ('115', 'shiva', 'manager', '5000', '15'), ('116', 'nisha', 'cashier', '8000', '16'),
 ('117', 'aanandhi', 'asst manager', '9000', '17'), ('118', 'leena', 'employee', '10000', '18'),
 ('119', 'mona', 'helper', '6500', '19'), ('120', 'logu', 'manager', '8900', '20'),
 ('121', 'raji', 'manager ', '5400', '21'),('122', 'somu ', 'cashier', '67000', '22'),
 ('123', 'pavi', 'watchman', '40000', '23'), ('124', 'krishna', 'clerk', '8900', '24'),
 ('125', 'dhini', 'employee', '4500', '25'),('126', 'thara', 'employee', '46000', '26'),
 ('127', 'jimin', 'watchman', '78000', '27'), ('128', 'john', 'clerk', '75000', '28'),
 ('129', 'keerthana', 'clerk', '45000', '29'), ('130', 'priya', 'employee', '9890', '30');
 
 INSERT INTO `bank_management`.`loan_details` (`Loan_id`, `Loan_type`, `Loan_amount`, `Intrest_rate`, `customer_id`, `Employee_id`) VALUES
 ('1', 'home loan ', '2345.00', '6.66', '1', '101'),
 ('2', 'gold loan', '3472.00', '3.99', '2', '102'),('3', 'educatin loan ', '4778.90', '7.00', '3', '103'),
 ('4', 'business loan', '4778.00', '8.56', '4', '104'),('5', 'vehical loan', '5776.00', '6.99', '5', '105'),
 ('6', 'personal loan', '4677.00', '1.22', '6', '106'),('7', 'gold loan', '6689.00', '6.45', '7', '107'),
 ('8', 'education loan', '5768.00', '6.09', '8', '108'),('9', 'education loan ', '5769.00', '4.23', '9', '109'),
 ('10', 'gold loan', '5478.00', '5.24', '10', '110'), ('11', 'business loan', '5868.00', '2.32', '11', '111'),
 ('12', 'vehical loan ', '5899.00', '2.76', '12', '112'),('13', 'agriculture loan', '5890.00', '9.08', '13', '113'),
 ('14', 'education loan', '3246.00', '2.33', '14', '114'),('15', 'gold loan', '5899.00', '1.99', '15', '115'),
 ('16', 'gold loan', '5689.00', '4.78', '16', '116'),('17', 'home loan ', '4678.00', '5.09', '17', '117'),
 ('18', 'home loan', '5468.00', '5.89', '18', '118'), ('19', 'agriculture loan', '5679.00', '2.22', '19', '119'),
 ('21', 'home loan', '6780.00', '4.88', '21', '121'), ('22', 'gold loan', '5689.00', '11.33', '22', '122'),
 ('23', 'auto loan', '5768.00', '12.90', '23', '123'), ('24', 'education loan', '5768.00', '09.89', '24', '124'),
 ('25', 'personal loan', '2535.00', '4.66', '25', '125'), ('26', 'gold loan ', '5687.00', '9', '26', '126'),
 ('27', 'home loan ', '4768.00', '2', '27', '127'),('28', 'agriculture loan', '7650.00', '6', '28', '128'),
 ('29', 'business loan', '5689.00', '8', '29', '129'),('30', 'gold loan', '3588.00', '9', '30', '130');
 
 -- to add new customer---
 DELIMITER //
CREATE PROCEDURE InsertCustomer( IN ID INT,
    IN FN VARCHAR(45), 
    IN LN VARCHAR(45),
    IN ADDR VARCHAR(85),
    IN contact_NO VARCHAR(15),
    IN MAIL VARCHAR(45),
    IN DOB DATE
)
BEGIN
    INSERT INTO customer_detail ( customer_id,first_name, last_name, Address, contact, Email, D_o_B)
    VALUES (id,FN, LN, ADDR, contact_NO, MAIL, DOB);
END //
DELIMITER ;
CALL InsertCustomer(31,'John', 'Doe', '123 Main St', '1234567890', 'john@example.com', '1990-05-15');

-- update customer contact details ---
DELIMITER //
CREATE PROCEDURE UpdateCustomerContact(
    IN cust_id INT, 
    IN new_contact VARCHAR(15), 
    IN new_email VARCHAR(45)
)
BEGIN
    UPDATE customer_detail 
    SET contact = new_contact, Email = new_email 
    WHERE customer_id = cust_id;
    select*from customer_detail where customer_id = cust_id;
END //
DELIMITER ;

call UpdateCustomerContact(1,'123568908','newname@gmail.com');

-- Retrive all account for a customer ---
DELIMITER //
CREATE PROCEDURE GetCustomerAccounts(IN cust_id INT)
BEGIN
    SELECT * FROM account_details WHERE customer_id = cust_id;
END //
DELIMITER ;
 call GetCustomerAccounts(1);
    
--  Retrieve Transaction History for an Account --
  DELIMITER //
CREATE PROCEDURE GetTransactionHistory(IN acc_no INT)
BEGIN
    SELECT * FROM transaction_details WHERE Account_No = acc_no;
END //
DELIMITER ;
call GetTransactionHistory('1025');

-- calculate total balance for a customer ---
DELIMITER //
CREATE PROCEDURE GetTotalBalance(IN cust_id INT, OUT total_balance DECIMAL(15,2))
BEGIN
    SELECT SUM(Balance) INTO total_balance FROM account_details WHERE customer_id = cust_id;
END //
DELIMITER ;
call GetTotalBalance(1,@total);
select @total;

-- Insert a New Loan for a Customer ---
delimiter //
CREATE PROCEDURE InsertLoan( in l_id int,
    IN LT VARCHAR(55),
    IN LA DECIMAL(10,2),
    IN intrestrate DECIMAL(10,4),
    IN customerid INT,
    IN employee_id INT
)
BEGIN
    INSERT INTO loan_details ( loan_id,Loan_type, Loan_amount, Intrest_rate, customer_id, Employee_id)
    VALUES (l_id,LT,LA,intrestrate,customerid,employee_id);
END //
delimiter ;
call InsertLoan(36,'home loan','50000.90',5.5,7,102);
-- Get Top 5 Customers with Highest Account Balance --
DELIMITER //
CREATE PROCEDURE GetTopCustomers()
BEGIN
    SELECT c.customer_id, c.first_name, c.last_name, SUM(a.Balance) AS total_balance 
    FROM customer_detail c 
    JOIN account_details a ON c.customer_id = a.customer_id
    GROUP BY c.customer_id
    ORDER BY total_balance DESC
    LIMIT 5;
    end //
    delimiter ;
    CALL GetTopCustomers();
    -- ---
    DELIMITER //
CREATE PROCEDURE UpdateEmployeeSalary(
    IN emp_id INT, 
    IN new_salary DECIMAL(15,2)
)
BEGIN
    UPDATE employee_details 
    SET Salary = new_salary 
    WHERE Employee_id = emp_id;
END //
DELIMITER ;
CALL UpdateEmployeeSalary(101, 75000);

-- Fetch Customers with More than One Account ---
DELIMITER //
CREATE PROCEDURE GetCustomersWithMultipleAccounts()
BEGIN
    SELECT customer_id, COUNT(Account_No) AS Account_Count
    FROM account_details
    GROUP BY customer_id
    HAVING COUNT(Account_No) > 1;
END //
DELIMITER ;
CALL GetCustomersWithMultipleAccounts();
-- 2. Retrieve Customers with Balance Greater Than a Given Amount ---
DELIMITER //
CREATE PROCEDURE GetCustomersWithHighBalance(IN min_balance DECIMAL(15,2))
BEGIN
    SELECT c.customer_id, c.first_name, c.last_name, SUM(a.Balance) AS total_balance
    FROM customer_detail c
    JOIN account_details a ON c.customer_id = a.customer_id
    GROUP BY c.customer_id
    HAVING total_balance > min_balance;
END //
DELIMITER ;
CALL GetCustomersWithHighBalance(10000);







  
  


