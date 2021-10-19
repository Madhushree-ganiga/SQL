create schema Air;
create table Air.airport_details(id int primary key not null,airport_name varchar(45),location varchar(45),no_of_airline int);
select * from Air.airport_details;
select id,location from Air.airport_details;
insert into Air.airport_details values(1,"KIA","Bnglr",10);
insert into Air.airport_details values(2,"KIA","Bnglr",10);
insert into Air.airport_details values(3,"KIA","Bnglr",10);
insert into Air.airport_details values(8,"Cochin International Airport","kerala",10);
insert into Air.airport_details values(5,"Mangalore International Airport","Mangalore",20);
insert into Air.airport_details values(6,"Indira Gandhi International Airport","delhi",10);
insert into Air.airport_details values(7,"chatrapathi shivaji","mumbai",12);


select * from Air.airport_details;

update 	airport_details set airport_name=" chennai Airport", location="chennai" where id=3;	
select * from Air.airport_details where id=4;
select * from Air.airport_details ;

create table passengers(p_id int primary key not null,p_name varchar(25), a_id int, foreign key(a_id) references airport_details(id));

insert into passengers values(101,"Madhushree",4),
                                     (102,"Ramya",2),
                                     (103,"kriti",3),
                                     (104,"Rashmi",1);
insert into passengers values(105,"aishwarya",5);
insert into passengers values(106,"vanshika",6);
insert into passengers values(107,"varsha",7);
 select * from passengers;                
 select * from passengers order by(p_name);
 select * from air.passengers right join airport_details on a_id=id;  
 select * from air.passengers left join airport_details on a_id=id;  
 select * from air.passengers full join airport_details on a_id=id;  
 select * from air.passengers inner join airport_details on a_id=id;  