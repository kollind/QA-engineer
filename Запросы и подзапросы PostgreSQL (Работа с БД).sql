-- Создание таблиц
CREATE TABLE department (
  id INTEGER,
  name VARCHAR(255),
  PRIMARY KEY (id)
);

CREATE TABLE employees (
        id INTEGER,
        department_id INTEGER,
        name VARCHAR(255),
        PRIMARY KEY (id)
);

CREATE TABLE customer (
        id INTEGER,
        customer_name VARCHAR(255),
        location VARCHAR(255),
        PRIMARY KEY (id)
);

CREATE TABLE contract (
        id INTEGER,
        customer_id INTEGER,
        amount INTEGER,
        PRIMARY KEY (id)
);

CREATE TABLE executor (
	tab_no INTEGER,
	contract_id INTEGER
);

-- Наполнение таблиц

INSERT INTO department(
  id, name)
  VALUES(1,'Manufacturing');
INSERT INTO department(
  id, name)
  VALUES(2,'Logistic');
INSERT INTO department(
  id, name)
  VALUES(3,'Sales');
INSERT INTO department(
  id, name)
  VALUES(4,'Economy');
INSERT INTO department(
  id, name)
  VALUES(5,'Production');



INSERT INTO employees(
  id, department_id, name)
  VALUES(1,1,'Ivan Ivanov');
INSERT INTO employees(
  id, department_id, name)
  VALUES(2,1,'Sidor Sidorov');
INSERT INTO employees(
  id, department_id, name)
  VALUES(3,2,'Egor Egorov');
INSERT INTO employees(
  id, department_id, name)
  VALUES(4,3,'Petr Petrov');
INSERT INTO employees(
  id, department_id, name)
  VALUES(5,4,'Vasily Vasilev');
INSERT INTO employees(
  id, department_id, name)
  VALUES(6,5,'Marina Marinina');
INSERT INTO employees(
  id, department_id, name)
  VALUES(7,5,'Dmitry Dmitriev');
INSERT INTO employees(
  id, department_id, name)
  VALUES(8,2,'Alex Alexeev');
INSERT INTO employees(
  id, department_id, name)
  VALUES(9,1,'Olga Olgova');
INSERT INTO employees(
  id, department_id, name)
  VALUES(10,3,'Olesya Olesyeva');



INSERT INTO customer(
  id, customer_name, location)
  VALUES(1,'Dmitry Bolshakov','Innopolis');
INSERT INTO customer(
  id, customer_name, location)
  VALUES(2,'Olesya Lavrenteeva','Innopolis');
INSERT INTO customer(
  id, customer_name, location)
  VALUES(3,'Anton Tarasov','Saratov');
INSERT INTO customer(
  id, customer_name, location)
  VALUES(4,'Marya Chelnakova','Moscow');
INSERT INTO customer(
  id, customer_name, location)
  VALUES(5,'Andrew Nilov','Kazan');
INSERT INTO customer(
  id, customer_name, location)
  VALUES(6,'Dmitry Egorov','Moscow');
INSERT INTO customer(
  id, customer_name, location)
  VALUES(7,'Ekaterina Fedorova','Moscow');
INSERT INTO customer(
  id, customer_name, location)
  VALUES(8,'Sergey Nikonov','Kazan');
INSERT INTO customer(
  id, customer_name, location)
  VALUES(9,'Alexey Lomovoi','Vladivostok');
  
  
  
INSERT INTO contract(
  id, customer_id, amount)
  VALUES(1,1,20000);
INSERT INTO contract(
  id, customer_id, amount)
  VALUES(2,2,10000);
INSERT INTO contract(
  id, customer_id, amount)
  VALUES(3,5,50000);
INSERT INTO contract(
  id, customer_id, amount)
  VALUES(4,7,150000);
INSERT INTO contract(
  id, customer_id, amount)
  VALUES(5,8,200000);
INSERT INTO contract(
  id, customer_id, amount)
  VALUES(6,9,14000);
INSERT INTO contract(
  id, customer_id, amount)
  VALUES(7,5,26000);
INSERT INTO contract(
  id, customer_id, amount)
  VALUES(8,4,60000);
INSERT INTO contract(
  id, customer_id, amount)
  VALUES(9,3,30000);
INSERT INTO contract(
  id, customer_id, amount)
  VALUES(10,1,32000);
INSERT INTO contract(
  id, customer_id, amount)
  VALUES(11,2,30000);
INSERT INTO contract(
  id, customer_id, amount)
  VALUES(12,8,40000);
INSERT INTO contract(
  id, customer_id, amount)
  VALUES(13,7,50000);
INSERT INTO contract(
  id, customer_id, amount)
  VALUES(14,9,60000);
INSERT INTO contract(
  id, customer_id, amount)
  VALUES(15,5,70000);
INSERT INTO contract(
  id, customer_id, amount)
  VALUES(16,4,80000);
INSERT INTO contract(
  id, customer_id, amount)
  VALUES(17,3,90000);
INSERT INTO contract(
  id, customer_id, amount)
  VALUES(18,4,100000);
INSERT INTO contract(
  id, customer_id, amount)
  VALUES(19,2,110000);
INSERT INTO contract(
  id, customer_id, amount)
  VALUES(20,1,120000);
INSERT INTO contract(
  id, customer_id, amount)
  VALUES(21,2,130000);
INSERT INTO contract(
  id, customer_id, amount)
  VALUES(22,7,140000);
INSERT INTO contract(
  id, customer_id, amount)
  VALUES(23,8,150000);
INSERT INTO contract(
  id, customer_id, amount)
  VALUES(24,9,160000);
INSERT INTO contract(
  id, customer_id, amount)
  VALUES(25,3,170000);
  
  
  
INSERT INTO executor(
  tab_no, contract_id)
  VALUES(1,1);
INSERT INTO executor(
  tab_no, contract_id)
  VALUES(2,2);
INSERT INTO executor(
  tab_no, contract_id)
  VALUES(3,3);
INSERT INTO executor(
  tab_no, contract_id)
  VALUES(4,4);
INSERT INTO executor(
  tab_no, contract_id)
  VALUES(5,5);
INSERT INTO executor(
  tab_no, contract_id)
  VALUES(7,6);
INSERT INTO executor(
  tab_no, contract_id)
  VALUES(2,7);
INSERT INTO executor(
  tab_no, contract_id)
  VALUES(3,8);
INSERT INTO executor(
  tab_no, contract_id)
  VALUES(5,9);
INSERT INTO executor(
  tab_no, contract_id)
  VALUES(6,10);
INSERT INTO executor(
  tab_no, contract_id)
  VALUES(7,11);
INSERT INTO executor(
  tab_no, contract_id)
  VALUES(9,12);
INSERT INTO executor(
  tab_no, contract_id)
  VALUES(10,13);
INSERT INTO executor(
  tab_no, contract_id)
  VALUES(1,14);
INSERT INTO executor(
  tab_no, contract_id)
  VALUES(2,15);
INSERT INTO executor(
  tab_no, contract_id)
  VALUES(5,16);
INSERT INTO executor(
  tab_no, contract_id)
  VALUES(2,17);
INSERT INTO executor(
  tab_no, contract_id)
  VALUES(3,18);
INSERT INTO executor(
  tab_no, contract_id)
  VALUES(7,19);
INSERT INTO executor(
  tab_no, contract_id)
  VALUES(8,20);
INSERT INTO executor(
  tab_no, contract_id)
  VALUES(5,21);
INSERT INTO executor(
  tab_no, contract_id)
  VALUES(4,22);
INSERT INTO executor(
  tab_no, contract_id)
  VALUES(3,23);
INSERT INTO executor(
  tab_no, contract_id)
  VALUES(4,24);
INSERT INTO executor(
  tab_no, contract_id)
  VALUES(5,25);
  
-- Объединение таблиц

ALTER TABLE employees ADD FOREIGN KEY (department_id) REFERENCES department (id);
ALTER TABLE executor ADD FOREIGN KEY (tab_no) REFERENCES employees (id);
ALTER TABLE executor ADD FOREIGN KEY (contract_id) REFERENCES contract (id);
ALTER TABLE contract ADD FOREIGN KEY (customer_id) REFERENCES customer (id);

-- Присоединение таблиц

SELECT ex.tab_no, dp.name, em.name, ct.amount, cs.customer_name, cs.location FROM executor ex
	JOIN employees em ON em.id = ex.tab_no
	JOIN department dp ON dp.id = em.department_id
	JOIN contract ct ON ct.id = ex.contract_id
	JOIN customer cs ON cs.id = ct.customer_id

-- Задача 1. Найти информацию о всех контрактах, связанных с сотрудниками департамента «Logistic». 
-- Вывести: contract_id, employee_name

SELECT ex.contract_id, em.name AS employee_name FROM executor ex
	JOIN employees em ON em.id = ex.tab_no
	JOIN department dp ON dp.id = em.department_id
	JOIN contract ct ON ct.id = ex.contract_id
WHERE dp.name = 'Logistic'


-- Задача 2. Найти среднюю стоимость контрактов, заключенных сотрудником Ivan Ivanov. 
-- Вывести: среднее значение amount

SELECT ROUND(AVG(ct.amount), '2') AS amount_average FROM executor ex
	JOIN employees em ON em.id = ex.tab_no
	JOIN contract ct ON ct.id = ex.contract_id
WHERE em.name = 'Ivan Ivanov'

-- Задача 3. Найти самую часто встречающуюся локацию среди всех заказчиков. 
-- Вывести: location, count

SELECT location, COUNT(location) FROM customer
GROUP BY (location)
HAVING COUNT(location) = (SELECT COUNT(location) FROM customer
GROUP BY (location)
ORDER BY COUNT(location)
DESC
LIMIT 1)

-- Задача 4. Найти контракты одинаковой стоимости
-- Вывести count, amount

SELECT COUNT(amount), amount FROM contract
GROUP BY (amount)
HAVING COUNT(amount) >= 2

-- Задача 5. Найти заказчика с наименьшей средней стоимостью контрактов. 
-- Вывести customer_name, среднее значение amount

SELECT cs.customer_name, ROUND(AVG(ct.amount), '2') AS amount_average FROM contract ct
	JOIN customer cs ON cs.id = ct.customer_id
GROUP BY cs.customer_name
HAVING AVG(ct.amount) = (SELECT AVG(ct.amount) FROM contract ct
	JOIN customer cs ON cs.id = ct.customer_id
GROUP BY (cs.customer_name)
ORDER BY AVG(ct.amount)
ASC
LIMIT 1)

-- Задача 6. Найти отдел, заключивший контрактов на наибольшую сумму.
-- Вывести: department_name, sum

SELECT dp.name AS department_name, SUM(ct.amount) FROM executor ex
	JOIN employees em ON em.id = ex.tab_no
	JOIN department dp ON dp.id = em.department_id
	JOIN contract ct ON ct.id = ex.contract_id
GROUP BY dp.name
HAVING SUM(ct.amount) = 
(SELECT SUM(ct.amount) FROM executor ex
	JOIN employees em ON em.id = ex.tab_no
	JOIN department dp ON dp.id = em.department_id
	JOIN contract ct ON ct.id = ex.contract_id
GROUP BY dp.name
ORDER BY SUM(ct.amount)
DESC
LIMIT 1)
