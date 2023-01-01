-- 1) Football database creation
create database Football;


-- 2) Football_Venue Table creation
create table Football_Venue
(
	venue_id Integer NOT NULL PRIMARY KEY,
	venue_name varchar(20),
	city_id Integer NOT NULL Unique,
	capacity Integer,
);

-- 3) Insertion of values into Table Football_Venue
insert into Football_Venue values(20001,'France',10003,42115);
insert into Football_Venue values(20002,'Argentina',10013,40000);
insert into Football_Venue values(20003,'Portugal',10023,45000);
insert into Football_Venue values(20004,'Morocco',10033,43017);
insert into Football_Venue values(20005,'India',10043,35679);
insert into Football_Venue values(20006,'China',10053,40173);
insert into Football_Venue values(20007,'Japan',10063,25199);
insert into Football_Venue values(20008,'Brazil',10073,38921);
insert into Football_Venue values(20009,'Germany',10083,41411);
insert into Football_Venue values(20010,'Spain',10093,40139);

--printing all values in the table
select * from Football_Venue;

-- 4) Printing count of venues in table
select count(venue_name) as venue_count from Football_Venue;

--5) printing venue name and capacity using alias concept
select venue_name as location, capacity as volume from Football_Venue;