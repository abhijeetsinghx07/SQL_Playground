___
> ## Salesman Table

```sql
 salesman_id |    name    |   city   | commission
-------------+------------+----------+------------
        5001 | James Hoog | New York |       0.15
        5002 | Nail Knite | Paris    |       0.13
        5005 | Pit Alex   | London   |       0.11
        5006 | Mc Lyon    | Paris    |       0.14
        5007 | Paul Adam  | Rome     |       0.13
        5003 | Lauson Hen | San Jose |       0.12
```


```sql
CREATE TABLE salesman 
(
    salesman_id NUMBER(10) PRIMARY KEY,
    name VARCHAR2(50) NOT NULL,       
    city VARCHAR2(50),               
    commission NUMBER(5, 2)            
);


INSERT ALL
INTO SALESMAN_CC ( SALESMAN_ID, NAME, CITY, COMMISSION) VALUES (50012, 'James Hoog', 'New York', 0.15)
INTO SALESMAN_CC ( SALESMAN_ID, NAME, CITY, COMMISSION) VALUES (50022, 'Nail Knite', 'Paris', 0.13)
INTO SALESMAN_CC ( SALESMAN_ID, NAME, CITY, COMMISSION) VALUES (50052, 'Pit Alex', 'London', 0.11)
INTO SALESMAN_CC ( SALESMAN_ID, NAME, CITY, COMMISSION) VALUES (50062, 'Mc Lyon', 'Paris', 0.14)
INTO SALESMAN_CC ( SALESMAN_ID, NAME, CITY, COMMISSION) VALUES (50072, 'Paul Adam', 'Rome', 0.13)
INTO SALESMAN_CC ( SALESMAN_ID, NAME, CITY, COMMISSION) VALUES (50032, 'Lauson Hen', 'San Jose', 0.12)
SELECT 1 FROM DUAL;
```

___
> ## Customer Table

```sql
customer_id |   cust_name    |    city    | grade | salesman_id
-------------+----------------+------------+-------+-------------
        3002 | Nick Rimando   | New York   |   100 |        5001
        3007 | Brad Davis     | New York   |   200 |        5001
        3005 | Graham Zusi    | California |   200 |        5002
        3008 | Julian Green   | London     |   300 |        5002
        3004 | Fabian Johnson | Paris      |   300 |        5006
        3009 | Geoff Cameron  | Berlin     |   100 |        5003
        3003 | Jozy Altidor   | Moscow     |   200 |        5007
        3001 | Brad Guzan     | London     |       |        5005
```

```sql
CREATE TABLE CUSTOMER
(
customer_id NUMBER(5) PRIMARY KEY,
cust_name VARCHAR(25) NOT NULL,
city VARCHAR(25) NOT NULL,
grade NUMBER(10) NOT NULL,
salesman_id NUMBER(5),
CONSTRAINT fk_salesman FOREIGN KEY (SALESMAN_ID)
REFERENCES SALESMAN(SALESMAN_ID)	
);



INSERT ALL
 INTO CUSTOMER (customer_id,cust_name,city,grade,salesman_id) VALUES (3002,'Nick Rimando','NewYork',100,5001)
 INTO CUSTOMER (customer_id,cust_name,city,grade,salesman_id) VALUES (3007,'Brad Davis','NewYork',200,5001)
 INTO CUSTOMER (customer_id,cust_name,city,grade,salesman_id) VALUES (3005,'Graham Zusi','California',200,5002)
 INTO CUSTOMER (customer_id,cust_name,city,grade,salesman_id) VALUES (3008,'Julian Green','London',300,5002)
 INTO CUSTOMER (customer_id,cust_name,city,grade,salesman_id) VALUES (3004,'Fabian Johnson','Paris',300,5006)
 INTO CUSTOMER (customer_id,cust_name,city,grade,salesman_id) VALUES (3009,'Geoff Cameron','Berlin',100,5003)
 INTO CUSTOMER (customer_id,cust_name,city,grade,salesman_id) VALUES (3003,'Jozy Altidor','Moscow',200,5007)
 INTO CUSTOMER (customer_id,cust_name,city,grade,salesman_id) VALUES (3001,'BradGuzan','London',NULL,5005)
SELECT 1 FROM DUAL;
```

___
> ## Orders Table


```sql
ord_no      purch_amt   ord_date    customer_id  salesman_id
----------  ----------  ----------  -----------  -----------
70001       150.5       2012-10-05  3005         5002
70009       270.65      2012-09-10  3001         5005
70002       65.26       2012-10-05  3002         5001
70004       110.5       2012-08-17  3009         5003
70007       948.5       2012-09-10  3005         5002
70005       2400.6      2012-07-27  3007         5001
70008       5760        2012-09-10  3002         5001
70010       1983.43     2012-10-10  3004         5006
70003       2480.4      2012-10-10  3009         5003
70012       250.45      2012-06-27  3008         5002
70011       75.29       2012-08-17  3003         5007
70013       3045.6      2012-04-25  3002         500
```

```sql
CREATE TABLE ORDERS
(
ord_no NUMBER(10) PRIMARY KEY,
purch_amt NUMBER(5,2) NOT NULL,
ord_date VARCHAR(25) NOT NULL,
customer_id NUMBER(5),
CONSTRAINT fk_customer_orders FOREIGN KEY(CUSTOMER_ID)
REFERENCES CUSTOMER(CUSTOMER_ID),

salesman_id NUMBER(5),
CONSTRAINT fk_salesman_orders FOREIGN KEY(SALESMAN_ID)
REFERENCES SALESMAN(SALESMAN_ID)
);



INSERT ALL
	INTO ORDERS (ord_no,purch_amt,ord_date,customer_id,salesman_id) VALUES (70001,150.5,'2012-10-05',3005,5002)
	INTO ORDERS (ord_no,purch_amt,ord_date,customer_id,salesman_id) VALUES (70009,270.65,'2012-09-10',3001,5005)
	INTO ORDERS (ord_no,purch_amt,ord_date,customer_id,salesman_id) VALUES (70002,65.26,'2012-10-05',3002,5001)
	INTO ORDERS (ord_no,purch_amt,ord_date,customer_id,salesman_id) VALUES (70004,110.5,'2012-08-17',3009,5003)
	INTO ORDERS (ord_no,purch_amt,ord_date,customer_id,salesman_id) VALUES (70007,948.5,'2012-09-10',3005,5002)
	INTO ORDERS (ord_no,purch_amt,ord_date,customer_id,salesman_id) VALUES (70005,2400.6,'2012-07-27',3007,5001)
	INTO ORDERS (ord_no,purch_amt,ord_date,customer_id,salesman_id) VALUES (70008,5760,'2012-09-10',3002,5001)
	INTO ORDERS (ord_no,purch_amt,ord_date,customer_id,salesman_id) VALUES (70010,1983.43,'2012-10-10',3004,5006)
	INTO ORDERS (ord_no,purch_amt,ord_date,customer_id,salesman_id) VALUES (70003,2480.4,'2012-10-10',3009,5003)
	INTO ORDERS (ord_no,purch_amt,ord_date,customer_id,salesman_id) VALUES (70012,250.45,'2012-06-27',3008,5002)
	INTO ORDERS (ord_no,purch_amt,ord_date,customer_id,salesman_id) VALUES (70011,75.29,'2012-08-17',3003,5007)
	INTO ORDERS (ord_no,purch_amt,ord_date,customer_id,salesman_id) VALUES (70013,3045.6,'2012-04-25',3002,5001)
SELECT 1 FROM DUAL;
 
```
