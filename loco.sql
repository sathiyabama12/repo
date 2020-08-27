C:\Program Files\PostgreSQL\10\bin>pg_ctl -D d:\clu1 start
 done
server started



C:\Program Files\PostgreSQL\10\bin>pg_ctl -D d:\clu1 status
pg_ctl: server is running (PID: 7736)


C:\Program Files\PostgreSQL\10\bin>psql -d postgres -p 9999 -U PostgreSQL

create table employee(id int,name varchar(15),salary float,primary key(id));

CREATE TABLE



create role testuser with replication login password 'secret_password';
CREATE ROLE


 grant all privileges on database test1 to testuser;
GRANT


 grant all privileges on all tables in schema public to testuser;
GRANT

create publication my_testlica;
CREATE PUBLICATION

 alter publication my_testlica add table employee;
ALTER PUBLICATION


 insert into employee (id,name,salary) values (1,'arun',5000);
INSERT 0 1
 insert into employee (id,name,salary) values (2,'dhoni',600.12);
INSERT 0 1
 insert into employee (id,name,salary) values (8,'kozhi',2300);
INSERT 0 1
 insert into employee (id,name,salary) values (106,'sharma',4500);
INSERT 0 1
 insert into employee (id,name,salary) values (207,'sachin',1000.58);
INSERT 0 1


select * from employee;
id   |  name   | price |
-----------+----------+-------
1    |  arun    | 5000
2    |  dhoni   | 600.12 
8    |  kozhi   | 2300
106  |  sharma  | 4500 
207  |  sachin  | 1000.58






select * from employee;
id   |  name   | price |
-----------+----------+-------
1    |  arun    | 5000
2    |  dhoni   | 600.12 
8    |  kozhi   | 2300
106  |  sharma  | 4500 
207  |  sachin  | 1000.58
19   |  aswin   | 1000.58
23   |  raina   | 1000.58










C:\Program Files\PostgreSQL\10\bin>pg_ctl -D d:\clu2 start

done
server started

C:\Program Files\PostgreSQL\10\bin>psql -d postgres -p 9898 -U Postgresql

create table employee(id int,name varchar(15),salary float,primary key(id));

CREATE TABLE

create subscription my_crp connection 'host=localhost port=9999 password=secret_password user=testuser dbname=test1' publication my_testlica;

created replication slot "my_crp" on publisher
CREATE SUBSCRIPTION



select * from employee;
id   |  name   | price |
-----------+----------+-------
1    |  arun    | 5000
2    |  dhoni   | 600.12 
8    |  kozhi   | 2300
106  |  sharma  | 4500 
207  |  sachin  | 1000.58





        
 insert into employee (id,name,salary) values (19,'aswin',3450);
INSERT 0 1
 insert into employee (id,name,salary) values (23,'raina',4329);
INSERT 0 1




select * from employee;
id   |  name   | price |
-----------+----------+-------
1    |  arun    | 5000
2    |  dhoni   | 600.12 
8    |  kozhi   | 2300
106  |  sharma  | 4500 
207  |  sachin  | 1000.58
19   |  aswin   | 1000.58
23   |  raina   | 1000.58