create schema Airport;

create table airport_details(id int primary key not null,airport_name varchar(45),location varchar(45),no_of_airline int);
select * from airport_details;
insert into airport_details values(5,"KIA","Bnglr",10),
                                     (6,"KIA","Bnglr",10);
update 	airport_details set airport_name="chennai", location="chennai" where id=6;		
select * from airport_details group by(airport_name);	

create table passengers_details(p_id int primary key not null,p_name varchar(25), a_id int, foreign key(a_id) references airport_details(id));
insert into passengers_details values(1,"Madhushree",5),
                                     (2,"Ramya",6);
select * from passengers_details;
select * from passengers_details order by(p_name);
