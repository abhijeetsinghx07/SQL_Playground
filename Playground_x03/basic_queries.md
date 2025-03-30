1. Write a query to display the names (first_name, last_name) using alias name "First Name", "Last Name". 
    <details>
      <summary>Click me :)</summary>

    ```sql
    mysql> SELECT first_name AS "First Name", last_name AS "Last Name"
        -> FROM emp
        -> LIMIT 10;

      +------------+-----------+
      | First Name | Last Name |
      +------------+-----------+
      | Steven     | King      |
      | Neena      | Kochhar   |
      | Lex        | De Haan   |
      | Alexander  | Hunold    |
      | Bruce      | Ernst     |
      | David      | Austin    |
      | Valli      | Pataballa |
      | Diana      | Lorentz   |
      | Nancy      | Greenberg |
      | Daniel     | Faviet    |
      +------------+-----------+
    ```
    </details> 
2. Write a query to get unique department ID from employee table.
    <details>
      <summary>Click me :)</summary>

    ```sql
    mysql> SELECT DISTINCT dep_id
        -> FROM emp;

      +--------+
      | dep_id |
      +--------+
      |      0 |
      |     10 |
      |     20 |
      |     30 |
      |     40 |
      |     50 |
      |     60 |
      |     70 |
      |     80 |
      |     90 |
      |    100 |
      |    110 |
      +--------+
    ```
    </details> 
3. Write a query to get all employee details from the employee table order by first name, descending.
    <details>
      <summary>Click me :)</summary>

    ```sql
    mysql> SELECT *
    -> FROM emp
    -> ORDER BY first_name DESC
    -> LIMIT 10;
    
      +--------+------------+-----------+----------+--------------------+------------+------------+---------+----------+--------+--------+
      | emp_id | first_name | last_name | email    | phone_no           | hire_date  | job_id     | salary  | comm_pct | mgr_id | dep_id |
      +--------+------------+-----------+----------+--------------------+------------+------------+---------+----------+--------+--------+
      |    180 | Winston    | Taylor    | WTAYLOR  | 650.507.9876       | 1987-09-05 | SH_CLERK   | 3200.00 |     0.00 |    120 |     50 |
      |    171 | William    | Smith     | WSMITH   | 011.44.1343.629268 | 1987-08-27 | SA_REP     | 7400.00 |     0.15 |    148 |     80 |
      |    206 | William    | Gietz     | WGIETZ   | 515.123.8181       | 1987-10-01 | AC_ACCOUNT | 8300.00 |     0.00 |    205 |    110 |
      |    195 | Vance      | Jones     | VJONES   | 650.501.4876       | 1987-09-20 | SH_CLERK   | 2800.00 |     0.00 |    123 |     50 |
      |    106 | Valli      | Pataballa | VPATABAL | 590.423.4560       | 1987-06-23 | IT_PROG    | 4800.00 |     0.00 |    103 |     60 |
      |    141 | Trenna     | Rajs      | TRAJS    | 650.121.8009       | 1987-07-28 | ST_CLERK   | 3500.00 |     0.00 |    124 |     50 |
      |    132 | TJ         | Olson     | TJOLSON  | 650.124.8234       | 1987-07-19 | ST_CLERK   | 2100.00 |     0.00 |    121 |     50 |
      |    190 | Timothy    | Gates     | TGATES   | 650.505.3876       | 1987-09-15 | SH_CLERK   | 2900.00 |     0.00 |    122 |     50 |
      |    170 | Tayler     | Fox       | TFOX     | 011.44.1343.729268 | 1987-08-26 | SA_REP     | 9600.00 |     0.20 |    148 |     80 |
      |    203 | Susan      | Mavris    | SMAVRIS  | 515.123.7777       | 1987-09-28 | HR_REP     | 6500.00 |     0.00 |    101 |     40 |
      +--------+------------+-----------+----------+--------------------+------------+------------+---------+----------+--------+--------+
    ```
    </details> 
4. Write a query to get the names (first_name, last_name), salary, PF of all the employees (PF is calculated as 15% of salary).
    <details>
      <summary>Click me :)</summary>

    ```sql
    mysql> SELECT first_name, last_name, salary, salary*15/100 AS PF
        -> FROM emp
        -> LIMIT 15;

      +-------------+-----------+----------+-------------+
      | first_name  | last_name | salary   | PF          |
      +-------------+-----------+----------+-------------+
      | Steven      | King      | 24000.00 | 3600.000000 |
      | Neena       | Kochhar   | 17000.00 | 2550.000000 |
      | Lex         | De Haan   | 17000.00 | 2550.000000 |
      | Alexander   | Hunold    |  9000.00 | 1350.000000 |
      | Bruce       | Ernst     |  6000.00 |  900.000000 |
      | David       | Austin    |  4800.00 |  720.000000 |
      | Valli       | Pataballa |  4800.00 |  720.000000 |
      | Diana       | Lorentz   |  4200.00 |  630.000000 |
      | Nancy       | Greenberg | 12000.00 | 1800.000000 |
      | Daniel      | Faviet    |  9000.00 | 1350.000000 |
      | John        | Chen      |  8200.00 | 1230.000000 |
      | Ismael      | Sciarra   |  7700.00 | 1155.000000 |
      | Jose Manuel | Urman     |  7800.00 | 1170.000000 |
      | Luis        | Popp      |  6900.00 | 1035.000000 |
      | Den         | Raphaely  | 11000.00 | 1650.000000 |
      +-------------+-----------+----------+-------------+
    ```
    </details> 
5. Write a query to get the employee ID, (first_name, last_name) together, salary in ascending order.
    <details>
      <summary>Click me :)</summary>

    ```sql
    mysql> SELECT emp_id, CONCAT(first_name,' ',last_name) AS Name, Salary
        -> FROM emp
        -> ORDER BY salary ASC
        -> LIMIT 20;

      +--------+-------------------+---------+
      | emp_id | Name              | Salary  |
      +--------+-------------------+---------+
      |    132 | TJ Olson          | 2100.00 |
      |    128 | Steven Markle     | 2200.00 |
      |    136 | Hazel Philtanker  | 2200.00 |
      |    135 | Ki Gee            | 2400.00 |
      |    127 | James Landry      | 2400.00 |
      |    131 | James Marlow      | 2500.00 |
      |    182 | Martha Sullivan   | 2500.00 |
      |    140 | Joshua Patel      | 2500.00 |
      |    191 | Randall Perkins   | 2500.00 |
      |    144 | Peter Vargas      | 2500.00 |
      |    119 | Karen Colmenares  | 2500.00 |
      |    143 | Randall Matos     | 2600.00 |
      |    198 | Donald OConnell   | 2600.00 |
      |    199 | Douglas Grant     | 2600.00 |
      |    118 | Guy Himuro        | 2600.00 |
      |    126 | Irene Mikkilineni | 2700.00 |
      |    139 | John Seo          | 2700.00 |
      |    183 | Girard Geoni      | 2800.00 |
      |    117 | Sigal Tobias      | 2800.00 |
      |    130 | Mozhe Atkinson    | 2800.00 |
      +--------+-------------------+---------+
    ```
    </details> 
6. Write a query to get the total salaries payable to employees.
    <details>
      <summary>Click me :)</summary>

    ```sql
    mysql> SELECT SUM(Salary) AS Total
        -> FROM emp;

      +-----------+
      | Total     |
      +-----------+
      | 691400.00 |
      +-----------+
    ```
    </details> 
7. Write a query to get the maximum and minimum salary from employees table.
    <details>
      <summary>Click me :)</summary>

    ```sql
    mysql> SELECT MAX(salary) AS "Max Salary", MIN(salary) AS "Min Salary"
        -> FROM emp;

      +------------+------------+
      | Max Salary | Min Salary |
      +------------+------------+
      |   24000.00 |    2100.00 |
      +------------+------------+
    ```
    </details> 
8. Write a query to get the average salary and number of employees in the employees table.
    <details>
      <summary>Click me :)</summary>

    ```sql
    mysql> SELECT AVG(salary) AS "Average Salary", COUNT(*) AS "No. of employees"
        -> FROM emp;

      +----------------+------------------+
      | Average Salary | No. of employees |
      +----------------+------------------+
      |    6461.682243 |              107 |
      +----------------+------------------+
    ```
    </details> 
9. Write a query to get the number of employees working with the company.
    <details>
      <summary>Click me :)</summary>

    ```sql
    mysql> SELECT COUNT(*) AS "Number of employees"
        -> FROM emp;

      +---------------------+
      | Number of employees |
      +---------------------+
      |                 107 |
      +---------------------+
    ```
    </details> 
10. Write a query to get the number of jobs available in the employees table.
    <details>
      <summary>Click me :)</summary>

    ```sql
    mysql> SELECT COUNT(DISTINCT job_id) AS "Number of jobs"
        -> FROM emp;
        
      +----------------+
      | Number of jobs |
      +----------------+
      |             19 |
      +----------------+
    ```
    </details> 
11. Write a query get all first name from employees table in upper case.
    <details>
      <summary>Click me :)</summary>

    ```sql
    
    ```
    </details> 
12. Write a query to get the first 3 characters of first name from employees table.
    <details>
      <summary>Click me :)</summary>

    ```sql
    
    ```
    </details> 
13. Write a query to calculate 171*214+625.
    <details>
      <summary>Click me :)</summary>

    ```sql
    
    ```
    </details> 
14. Write a query to get the names (for example Ellen Abel, Sundar Ande etc.) of all the employees from employees table.
    <details>
      <summary>Click me :)</summary>

    ```sql
    
    ```
    </details> 
15. Write a query to get first name from employees table after removing white spaces from both side.
    <details>
      <summary>Click me :)</summary>

    ```sql
    
    ```
    </details> 
16. Write a query to get the length of the employee names (first_name, last_name) from employees table.
    <details>
      <summary>Click me :)</summary>

    ```sql
    
    ```
    </details> 
17. Write a query to check if the first_name fields of the employees table contains numbers.
    <details>
      <summary>Click me :)</summary>

    ```sql
    
    ```
    </details> 
18. Write a query to select first 10 records from a table.
    <details>
      <summary>Click me :)</summary>

    ```sql
    
    ```
    </details> 
19. Write a query to get monthly salary (round 2 decimal places) of each and every employee
Note : Assume the salary field provides the 'annual salary' information.
    <details>
      <summary>Click me :)</summary>

    ```sql
    
    ```
    </details> 