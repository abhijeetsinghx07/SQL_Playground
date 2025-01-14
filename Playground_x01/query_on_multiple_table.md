**1.** From the following tables, write a SQL query to find the salespeople and customers who live in the same city. Return customer name, salesperson name and salesperson city.

*Table*: salesman

*Table*: customer


**2.** From the following tables, write a SQL query to locate all the customers and the salesperson who works for them. Return customer name, and salesperson name.

*Table*: customer

*Table*: salesman



**3.** From the following tables, write a SQL query to find those salespeople who generated orders for their customers but are not located in the same city. Return ord_no, cust_name, customer_id (orders table), salesman_id (orders table).

*Table*: salesman

*Table*: customer

*Table*: orders


**4.** From the following tables, write a SQL query to locate the orders made by customers. Return order number, customer name.

*Table*: orders

*Table*: customer



**5.** From the following tables, write a SQL query to find those customers where each customer has a grade and is served by a salesperson who belongs to a city. Return cust_name as "Customer", grade as "Grade".

*Table*: orders

*Table*: customer



**6.** From the following table, write a SQL query to find those customers who are served by a salesperson and the salesperson earns commission in the range of 12% to 14% (Begin and end values are included.). Return cust_name AS "Customer", city AS "City".

*Table*: salesman

*Table*: customer



**7.** From the following tables, write a SQL query to find all orders executed by the salesperson and ordered by the customer whose grade is greater than or equal to 200. Compute purch_amt*commission as “Commission”. Return customer name, commission as “Commission%” and Commission.

*Table*: salesman

*Table*: customer

*Table*: orders


**8.** From the following table, write a SQL query to find those customers who placed orders on October 5, 2012. Return customer_id, cust_name, city, grade, salesman_id, ord_no, purch_amt, ord_date, customer_id and salesman_id.

*Table*: customer

*Table*: orders
