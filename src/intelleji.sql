create table students1(
                          id serial primary key ,
                          first_name varchar not null ,
                          last_name varchar,
                          age int,
                          email varchar unique,
                          course_id int references courses(id)
);
alter table students1 add column phone_number varchar;
alter table students1 rename first_name to name;
alter table students1 drop column phone_number;
alter table students1 alter column last_name set not null;
drop table students1;


create table courses(
                        id serial primary key ,
                        course_name varchar not null  ,
                        price int

);
drop table courses;
insert into students1( first_name, last_name, age, email, course_id)
values ('Asan','Usonov',14,' asan89.kg',1),
       ('Asel','Asanov',23,'asel32.de',2);
insert into courses(course_name, price)
VALUES ('Java',100),('JS',100);