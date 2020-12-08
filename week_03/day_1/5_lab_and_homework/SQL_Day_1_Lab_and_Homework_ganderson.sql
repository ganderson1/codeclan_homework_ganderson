/* MVP */

/* Q1 */

SELECT *
FROM employees
WHERE department = 'Human Resources';

/* Q2 */

SELECT 
	first_name, 
	last_name,
	country
FROM employees
WHERE department = 'Legal';

/* Q3 */

SELECT 
COUNT(*) AS employee_count
FROM employees
WHERE country = 'Portugal';

/* Q4 */

SELECT 
COUNT(*) AS employee_count
FROM employees
WHERE country = 'Portugal' OR country = 'Spain';

/* Q5 */

SELECT
COUNT(*) AS no_of_records_without_details
FROM pay_details
WHERE local_account_no IS NULL;

/* Q6 */

SELECT 
	first_name, 
	last_name 
FROM employees
ORDER BY last_name NULLS LAST;

/* Q7 */

SELECT
COUNT(*) AS no_of_employees
FROM employees
WHERE last_name LIKE 'F%';

/* Q8 */

SELECT
	department,
	COUNT(*) AS employee_count
FROM employees
WHERE pension_enrol = TRUE AND country != 'France' AND country != 'Germany'
GROUP BY department;


/* Q9 */

SELECT 
COUNT(*) AS employee_count
FROM employees
WHERE start_date BETWEEN '2003-01-01' AND '2003-12-31';


/* Q10 */

SELECT
	department,
	fte_hours,
	COUNT(*) AS number_of_employees
FROM employees
GROUP BY department, fte_hours
ORDER BY department, fte_hours;

/* Q11 */

SELECT
	department,
	COUNT(*) AS employee_count
FROM employees
WHERE first_name IS NULL AND (SELECT COUNT(*) FROM employees) >= 2 
GROUP BY department
ORDER BY
employee_count DESC,department;

/* Q12 */

SELECT
	department,
	grade,
	COUNT(*) AS employee_count_total
	FROM employees
GROUP BY department, grade
ORDER BY department, grade;

/* Ext */

/* Q1 */

SELECT 
COUNT(*) AS employee_count
FROM employees
WHERE country = 'Portugal';

/* Q2 */

/* Q3 */

/* Q4 */