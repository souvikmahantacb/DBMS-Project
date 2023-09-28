--Creating customer table--
CREATE TABLE Customer(
    Cust_number int,
    first_name Varchar(50),
    last_name Varchar(50),
    address Varchar(200),
    program_number Int,
    program_tile Varchar(50),
    Coach_ID Int,
    Ex_id_number Int,
    Payment_id Int
);
 
--Inserting sample data--
 INSERT INTO Customer (Cust_number, first_name, last_name, address, program_number, program_tile, Coach_ID, Ex_id_number, Payment_id)
VALUES
(1, 'Alice', 'Smith', '123 Main Street', 1, 'Program 1', 1, 1, 1),
(2, 'Bob', 'Jones', '456 Elm Street', 2, 'Program 2', 2, 2, 2),
(3, 'Carol', 'Williams', '789 Oak Street', 3, 'Program 3', 3, 3, 3);
select * from customer;

--Creating Payment table--
CREATE TABLE payment(
    Payment_id int,
    Cust_number	Int ,
    payment_date Date,
    transaction_mode Varchar (100),
    transaction_id varchar(100) 
);

--Inserting data into payment table--
INSERT INTO payment (Payment_id, Cust_number, payment_date, transaction_mode, transaction_id)
VALUES
(1, 1, '2023-09-24', 'Credit Card', 1234567890),
(2, 2, '2023-09-25', 'Debit Card', 9876543210),
(3, 3, '2023-09-26', 'PayPal', 1111111111);
select * from payment;

--Creating coach table--
CREATE TABLE Coach(
    Coach_ID int,
    first_name Varchar(50),
    last_name Varchar (50),
    date_of_birth Date,
    address	Varchar(200),
    contact_No	varchar(100),
    user_name	Varchar(20)
);

--inserting data into coach table--
INSERT INTO Coach (Coach_ID, first_name, last_name, date_of_birth, address, contact_No, user_name)
VALUES
(1, 'John', 'Doe', '1980-01-01', '123 Main Street', 1234567890, 'johndoe'),
(2, 'Jane', 'Doe', '1981-02-02', '456 Elm Street', 9876543210, 'janedoe'),
(3, 'Peter', 'Parker', '1982-03-03', '789 Oak Street', 0987654321, 'peterparker');
select * from coach;

--creating table User_name--
CREATE TABLE User_name(
    Coach_ID int,
    user_name Varchar(20),
    password Varchar(20));

--inserting data into user_name table-- 
INSERT INTO User_name (Coach_ID, user_name, password)
VALUES
(1, 'johndoe', 'password1'),
(2, 'janedoe', 'password2'),
(3, 'peterparker', 'password3');
select * from User_name;


--Creating table program--
CREATE TABLE program(
    program_number int,
    program_title Varchar(50),
    Start_Date	date,
    Finish_Date Date,
    Price Int
    );

--inserting data into program table-- 
INSERT INTO program (program_number, program_title, Start_Date, Finish_Date, Price)
VALUES
(1, 'Program 1', '2023-09-24', '2023-10-24', 1000),
(2, 'Program 2', '2023-09-25', '2023-10-25', 1500),
(3, 'Program 3', '2023-09-26', '2023-10-26', 2000);
select * from program;

--Creating table program_coach--
CREATE TABLE Program_coach (
    program_number int,
    Coach_ID Int,
    Ex_id_number Int
    );
INSERT INTO Program_coach (program_number, Coach_ID, Ex_id_number)
VALUES
(1, 1, 1),
(1, 2, 1),
(2, 2, 2),
(2, 3, 1),
(3, 3, 3);
select * from Program_coach;


--Creating table exercise_log--
CREATE TABLE Exercise_Log(
    Ex_ID_number int,
    Date date,
    Exercise_category varchar(100),
    Exercise_sub_category Varchar(100),
    Time_spent Int(10),
    calories_burnt Int(10)
    );

INSERT INTO Exercise_Log (Ex_ID_number, Date, Exercise_category, Exercise_sub_category, Time_spent, calories_burnt)
VALUES
    (1, '2023-09-24', 'Cardio', 'Running', 30, 200),
    (2, '2023-09-25', 'Strength Training', 'Push-ups', 15, 100),
    (3, '2023-09-26', 'Yoga', 'Sun Salutation', 20, 150);
select * from Exercise_Log;

select * from program
where price>1500;

select * from exercise_log as e 
join customer as c
on e.ex_ID_number=c.ex_ID_number;

select * from program as p
left join program_coach as pc
on p.program_number=pc.program_number;





