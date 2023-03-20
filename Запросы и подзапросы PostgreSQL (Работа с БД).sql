-- Все джойны

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
