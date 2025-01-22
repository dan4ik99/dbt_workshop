-- Database: dwh_example

-- DROP DATABASE IF EXISTS dwh_example;

CREATE DATABASE dwh_example
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'Russian_Russia.1251'
    LC_CTYPE = 'Russian_Russia.1251'
    LOCALE_PROVIDER = 'libc'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;

create schema if not exists jaffle_shop;
create schema if not exists stripe;

create schema if not exists dev;

create table jaffle_shop.customers(
    id integer,
    first_name varchar(50),
    last_name varchar(50)
);

create table jaffle_shop.orders(
    id integer,
    user_id integer,
    order_date date,
    status varchar(50)
);

create table stripe.payment(
    id integer,
    orderid integer,
    paymentmethod varchar(50),
    status varchar(50),
    amount integer,
    created date
);

INSERT INTO jaffle_shop.orders (id, user_id, order_date, status) VALUES
(1, 1, '2018-01-01', 'returned'),
(2, 3, '2018-01-02', 'completed'),
(3, 94, '2018-01-04', 'completed'),
(4, 50, '2018-01-05', 'completed'),
(5, 64, '2018-01-05', 'completed'),
(6, 54, '2018-01-07', 'completed'),
(7, 88, '2018-01-09', 'completed'),
(8, 2, '2018-01-11', 'returned'),
(9, 53, '2018-01-12', 'completed'),
(10, 7, '2018-01-14', 'completed'),
(11, 99, '2018-01-14', 'completed'),
(12, 59, '2018-01-15', 'completed'),
(13, 84, '2018-01-17', 'completed'),
(14, 40, '2018-01-17', 'returned'),
(15, 25, '2018-01-17', 'completed'),
(16, 39, '2018-01-18', 'completed'),
(17, 71, '2018-01-18', 'completed'),
(18, 64, '2018-01-20', 'returned'),
(19, 54, '2018-01-22', 'completed'),
(20, 20, '2018-01-23', 'completed'),
(21, 71, '2018-01-23', 'completed'),
(22, 86, '2018-01-24', 'completed'),
(23, 22, '2018-01-26', 'return_pending'),
(24, 3, '2018-01-27', 'completed'),
(25, 51, '2018-01-28', 'completed'),
(26, 32, '2018-01-28', 'completed'),
(27, 94, '2018-01-29', 'completed'),
(28, 8, '2018-01-29', 'completed'),
(29, 57, '2018-01-31', 'completed'),
(30, 69, '2018-02-02', 'completed'),
(31, 16, '2018-02-02', 'completed'),
(32, 28, '2018-02-04', 'completed'),
(33, 42, '2018-02-04', 'completed'),
(34, 38, '2018-02-06', 'completed'),
(35, 80, '2018-02-08', 'completed'),
(36, 85, '2018-02-10', 'completed'),
(37, 1, '2018-02-10', 'completed'),
(38, 51, '2018-02-10', 'completed'),
(39, 26, '2018-02-11', 'completed'),
(40, 33, '2018-02-13', 'completed'),
(41, 99, '2018-02-14', 'completed'),
(42, 92, '2018-02-16', 'completed'),
(43, 31, '2018-02-17', 'completed'),
(44, 66, '2018-02-17', 'completed'),
(45, 22, '2018-02-17', 'completed'),
(46, 6, '2018-02-19', 'completed'),
(47, 50, '2018-02-20', 'completed'),
(48, 27, '2018-02-21', 'completed'),
(49, 35, '2018-02-21', 'completed'),
(50, 51, '2018-02-23', 'completed'),
(51, 71, '2018-02-24', 'completed'),
(52, 54, '2018-02-25', 'return_pending'),
(53, 34, '2018-02-26', 'completed'),
(54, 54, '2018-02-26', 'completed'),
(55, 18, '2018-02-27', 'completed'),
(56, 79, '2018-02-28', 'completed'),
(57, 93, '2018-03-01', 'completed'),
(58, 22, '2018-03-01', 'completed'),
(59, 30, '2018-03-02', 'completed'),
(60, 12, '2018-03-03', 'completed'),
(61, 63, '2018-03-03', 'completed'),
(62, 57, '2018-03-05', 'completed'),
(63, 70, '2018-03-06', 'completed'),
(64, 13, '2018-03-07', 'completed'),
(65, 26, '2018-03-08', 'completed'),
(66, 36, '2018-03-10', 'completed'),
(67, 79, '2018-03-11', 'completed'),
(68, 53, '2018-03-11', 'completed'),
(69, 3, '2018-03-11', 'completed'),
(70, 8, '2018-03-12', 'completed'),
(71, 42, '2018-03-12', 'shipped'),
(72, 30, '2018-03-14', 'shipped'),
(73, 19, '2018-03-16', 'completed'),
(74, 9, '2018-03-17', 'shipped'),
(75, 69, '2018-03-18', 'completed'),
(76, 25, '2018-03-20', 'completed'),
(77, 35, '2018-03-21', 'shipped'),
(78, 90, '2018-03-23', 'shipped'),
(79, 52, '2018-03-23', 'shipped'),
(80, 11, '2018-03-23', 'shipped'),
(81, 76, '2018-03-23', 'shipped'),
(82, 46, '2018-03-24', 'shipped'),
(83, 54, '2018-03-24', 'shipped'),
(84, 70, '2018-03-26', 'placed'),
(85, 47, '2018-03-26', 'shipped'),
(86, 68, '2018-03-26', 'placed'),
(87, 46, '2018-03-27', 'placed'),
(88, 91, '2018-03-27', 'shipped'),
(89, 21, '2018-03-28', 'placed'),
(90, 66, '2018-03-30', 'shipped'),
(91, 47, '2018-03-31', 'placed'),
(92, 84, '2018-04-02', 'placed'),
(93, 66, '2018-04-03', 'placed'),
(94, 63, '2018-04-03', 'placed'),
(95, 27, '2018-04-04', 'placed'),
(96, 90, '2018-04-06', 'placed'),
(97, 89, '2018-04-07', 'placed'),
(98, 41, '2018-04-07', 'placed'),
(99, 85, '2018-04-09', 'placed');

INSERT INTO stripe.payment (id, orderid, paymentmethod, status, amount, created) VALUES
(69, 56, 'credit_card', 'success', 400, '2018-02-28'),
(70, 57, 'bank_transfer', 'success', 200, '2018-03-01'),
(71, 58, 'coupon', 'fail', 1800, '2018-03-01'),
(72, 58, 'coupon', 'success', 1800, '2018-03-01'),
(73, 58, 'gift_card', 'success', 600, '2018-03-01'),
(74, 59, 'gift_card', 'success', 2800, '2018-03-02'),
(75, 60, 'credit_card', 'success', 400, '2018-03-03'),
(76, 61, 'bank_transfer', 'success', 1600, '2018-03-03'),
(77, 62, 'gift_card', 'success', 1400, '2018-03-05'),
(78, 63, 'credit_card', 'success', 2900, '2018-03-06'),
(79, 64, 'bank_transfer', 'success', 2600, '2018-03-07'),
(80, 65, 'credit_card', 'success', 0, '2018-03-08'),
(81, 66, 'credit_card', 'success', 2800, '2018-03-10'),
(82, 67, 'bank_transfer', 'success', 400, '2018-03-11'),
(83, 67, 'credit_card', 'success', 1900, '2018-03-11'),
(84, 68, 'credit_card', 'success', 1600, '2018-03-11'),
(85, 69, 'credit_card', 'success', 1900, '2018-03-11'),
(86, 70, 'credit_card', 'success', 2600, '2018-03-12'),
(87, 71, 'credit_card', 'success', 500, '2018-03-12'),
(88, 72, 'credit_card', 'success', 2900, '2018-03-14'),
(89, 73, 'bank_transfer', 'success', 300, '2018-03-16'),
(90, 74, 'credit_card', 'success', 3000, '2018-03-17'),
(91, 75, 'credit_card', 'success', 1900, '2018-03-18'),
(92, 76, 'coupon', 'success', 200, '2018-03-20'),
(93, 77, 'credit_card', 'success', 0, '2018-03-21'),
(94, 77, 'bank_transfer', 'success', 1900, '2018-03-21'),
(95, 78, 'bank_transfer', 'success', 2600, '2018-03-23'),
(96, 79, 'credit_card', 'success', 1800, '2018-03-23'),
(97, 79, 'credit_card', 'success', 900, '2018-03-23'),
(98, 80, 'gift_card', 'success', 300, '2018-03-23'),
(99, 81, 'coupon', 'success', 200, '2018-03-23'),
(100, 82, 'credit_card', 'success', 800, '2018-03-24'),
(101, 83, 'credit_card', 'success', 100, '2018-03-24'),
(102, 84, 'bank_transfer', 'success', 2500, '2018-03-26'),
(103, 85, 'bank_transfer', 'success', 1700, '2018-03-26'),
(104, 86, 'coupon', 'success', 2300, '2018-03-26'),
(105, 87, 'gift_card', 'success', 3000, '2018-03-27'),
(106, 87, 'credit_card', 'success', 2600, '2018-03-27'),
(107, 88, 'credit_card', 'success', 2900, '2018-03-27'),
(108, 89, 'bank_transfer', 'success', 2200, '2018-03-28'),
(109, 90, 'bank_transfer', 'success', 200, '2018-03-30'),
(110, 91, 'credit_card', 'success', 1900, '2018-03-31'),
(111, 92, 'bank_transfer', 'success', 1500, '2018-04-02'),
(112, 92, 'coupon', 'success', 200, '2018-04-02'),
(113, 93, 'gift_card', 'success', 2600, '2018-04-03'),
(114, 94, 'gift_card', 'fail', 700, '2018-04-03'),
(115, 94, 'coupon', 'success', 700, '2018-04-03'),
(116, 95, 'coupon', 'success', 2400, '2018-04-04');

INSERT INTO jaffle_shop.customers (id, first_name, last_name) VALUES
(1, 'Michael', 'P.'),
(2, 'Shawn', 'M.'),
(3, 'Kathleen', 'P.'),
(4, 'Jimmy', 'C.'),
(5, 'Katherine', 'R.'),
(6, 'Sarah', 'R.'),
(7, 'Martin', 'M.'),
(8, 'Frank', 'R.'),
(9, 'Jennifer', 'F.'),
(10, 'Henry', 'W.'),
(11, 'Fred', 'S.'),
(12, 'Amy', 'D.'),
(13, 'Kathleen', 'M.'),
(14, 'Steve', 'F.'),
(15, 'Teresa', 'H.'),
(16, 'Amanda', 'H.'),
(17, 'Kimberly', 'R.'),
(18, 'Johnny', 'K.'),
(19, 'Virginia', 'F.'),
(20, 'Anna', 'A.'),
(21, 'Willie', 'H.'),
(22, 'Sean', 'H.'),
(23, 'Mildred', 'A.'),
(24, 'David', 'G.'),
(25, 'Victor', 'H.'),
(26, 'Aaron', 'R.'),
(27, 'Benjamin', 'B.'),
(28, 'Lisa', 'W.'),
(29, 'Benjamin', 'K.'),
(30, 'Christina', 'W.'),
(31, 'Jane', 'G.'),
(32, 'Thomas', 'O.'),
(33, 'Katherine', 'M.'),
(34, 'Jennifer', 'S.'),
(35, 'Sara', 'T.'),
(36, 'Harold', 'O.'),
(37, 'Shirley', 'J.'),
(38, 'Dennis', 'J.'),
(39, 'Louise', 'W.'),
(40, 'Maria', 'A.'),
(41, 'Gloria', 'C.'),
(42, 'Diana', 'S.'),
(43, 'Kelly', 'N.'),
(44, 'Jane', 'R.'),
(45, 'Scott', 'B.'),
(46, 'Norma', 'C.'),
(47, 'Marie', 'P.'),
(48, 'Lillian', 'C.'),
(49, 'Judy', 'N.'),
(50, 'Billy', 'L.'),
(51, 'Howard', 'R.'),
(52, 'Laura', 'F.'),
(53, 'Anne', 'B.'),
(54, 'Rose', 'M.'),
(55, 'Nicholas', 'R.'),
(56, 'Joshua', 'K.'),
(57, 'Paul', 'W.'),
(58, 'Kathryn', 'K.'),
(59, 'Adam', 'A.'),
(60, 'Norma', 'W.'),
(61, 'Timothy', 'R.'),
(62, 'Elizabeth', 'P.'),
(63, 'Edward', 'G.'),
(64, 'David', 'C.'),
(65, 'Brenda', 'W.'),
(66, 'Adam', 'W.'),
(67, 'Michael', 'H.'),
(68, 'Jesse', 'E.'),
(69, 'Janet', 'P.'),
(70, 'Helen', 'F.'),
(71, 'Gerald', 'C.'),
(72, 'Kathryn', 'O.'),
(73, 'Alan', 'B.'),
(74, 'Harry', 'A.'),
(75, 'Andrea', 'H.'),
(76, 'Barbara', 'W.'),
(77, 'Anne', 'W.'),
(78, 'Harry', 'H.'),
(79, 'Jack', 'R.'),
(80, 'Phillip', 'H.'),
(81, 'Shirley', 'H.'),
(82, 'Arthur', 'D.'),
(83, 'Virginia', 'R.'),
(84, 'Christina', 'R.'),
(85, 'Theresa', 'M.'),
(86, 'Jason', 'C.'),
(87, 'Phillip', 'B.'),
(88, 'Adam', 'T.'),
(89, 'Margaret', 'J.'),
(90, 'Paul', 'P.'),
(91, 'Todd', 'W.'),
(92, 'Willie', 'O.'),
(93, 'Frances', 'R.'),
(94, 'Gregory', 'H.'),
(95, 'Lisa', 'P.'),
(96, 'Jacqueline', 'A.'),
(97, 'Shirley', 'D.'),
(98, 'Nicole', 'M.'),
(99, 'Mary', 'G.'),
(100, 'Jean', 'M.');