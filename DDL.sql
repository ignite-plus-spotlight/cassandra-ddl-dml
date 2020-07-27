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



