Create commands:



CREATING KEYSPACE :

 create keyspace spot WITH replication = {'class':'SimpleStrategy', 'replication_factor' : 1};

 use demo;


CREATE TABLE Teamawards(

team_id int,

period_name text,

award_name text,

team_points int,

awarded_by int,

team_id list<int>,

PRIMARY KEY(team_id,period_name)

);


 CREATE TABLE Employee(

emp_id int,

emp_email varchar,

first_name text,

last_name text,

gender text,

team_id list<int>,

PRIMARY KEY(emp_id)

);



CREATE TABLE Roles(

   role_name text PRIMARY KEY,

   description text

   );



CREATE TABLE Team(

   team_id int PRIMARY KEY,

   team_name text,

   emp_m_id  int

   );



CREATE TABLE Nominations(

   period_name text,

   category_name text,

    award_name text,

   nominee int,

   nominated_by int,

   PRIMARY KEY(nominee,period_name,category_name)

   );



CREATE TABLE Emp_roles(

emp_id int,

         role_name text,

PRIMARY KEY(emp_id,role_name)

);



CREATE TABLE Awards(

award_name text PRIMARY KEY,

description text,

        points int

);



CREATE TABLE Emp_awards(

         emp_id int,

        period_name text,

        category_name text

        award_name text,

        emp_points int,

awarded_by int,

PRIMARY KEY(emp_id,period_name)

);



CREATE TABLE Category

(

category_name text,

award_name text,

PRIMARY KEY(category_name,award_name)

);


CREATE TABLE Category_teams(

category_name text,

team_id int,

PRIMARY KEY(category_name,team_id)

);




CREATE TABLE Period(

period_name text,

category_name text,

PRIMARY KEY(period_name,category_name)

);


CREATE TABLE login(

emp_email text PRIMARY KEY,

password text

);





Insert into Roles(role_name, description) values ('team member','employee');

Insert into Roles(role_name, description) values ('manager','manages team');

Insert into Roles(role_name, description) values ('vice president','administers');

Insert into Roles(role_name, description) values ('core team','overall administration');


Insert into category(category_name, award_name) values('tech','hardworker');

Insert into category(category_name, award_name) values('tech','leadership');

Insert into category(category_name, award_name) values('tech','team player');

Insert into category(category_name, award_name) values('management','hardworker');

Insert into category(category_name, award_name) values('management','leadership');

Insert into category(category_name, award_name) values('management','team player');



Insert into period(period_name,category_name) values('monthly','tech');

Insert into period(period_name,category_name) values('monthly','management');

Insert into period(period_name,category_name) values('monthly','security');

Insert into period(period_name,category_name) values('quarterly','tech');

Insert into period(period_name,category_name) values('quarterly','management');

Insert into period(period_name,category_name) values('quarterly','security');



Insert into awards(award_name, description,points) values('hardworker','complete dedication',100);

Insert into awards(award_name, description,points) values('leadership','potential to lead..',100);

Insert into awards(award_name, description,points) values('team player','cooperative',100);


insert into employee (emp_id, emp_email, first_name, last_name, gender, team_id) values(10,'ayan@gmail.com','ayan','tiwari','M',[100]);

insert into employee (emp_id, emp_email, first_name, last_name, gender, team_id) values(20,'benika@gmail.com','benika','pandya','F',[100]);

insert into employee (emp_id, emp_email, first_name, last_name, gender, team_id) values(30,'aryan@gmail.com','aryan','kumar','M',[100]);

insert into employee (emp_id, emp_email, first_name, last_name, gender, team_id) values(40,’xyz@gmail.com','xyz','xyz','M',[200]);

insert into employee (emp_id, emp_email, first_name, last_name, gender, team_id) values(50,’abc@gmail.com','abc','uvw','F',[200]);




Insert into team(team_id,team_name,emp_m_id )values(100,'spotlight',20);

Insert into team(team_id,team_name,emp_m_id )values(200,'alpha',40);



Insert into nominations (period_name,category_name,award_name,nominee,nominated_by) values('monthly','tech','leadership',10,20);

Insert into nominations (period_name,category_name,award_name,nominee,nominated_by) values('monthly','management','best performer',200,50);

Insert into nominations (period_name,category_name,award_name,nominee,nominated_by) values('quarterly','tech','best performer',100,50);




Insert into category_teams(category_name,team_id) values('tech',100);

Insert into category_teams(category_name,team_id) values('tech',300);

Insert into category_teams(category_name,team_id) values('management',200);

Insert into category_teams(category_name,team_id) values('management',400);



Insert into emp_roles(emp_id,role_name) values(10,'team member');

Insert into emp_roles(emp_id,role_name) values(20,'manager');

Insert into emp_roles(emp_id,role_name) values(30,'team member');

Insert into emp_roles(emp_id,role_name) values(40,'manager');

Insert into emp_roles(emp_id,role_name) values(50,'vice president');



Insert into emp_awards(emp_id,period_name,award_name,emp_points,awarded_by) values(10,'monthly','team player',80,20);

Insert into emp_awards(emp_id,period_name,award_name,emp_points,awarded_by) values(20,'monthly','team player',80,20);



Insert into team_awards(team_id,period_name,award_name,team_points,awarded_by)values(100,'monthly','best performer',200,20);




