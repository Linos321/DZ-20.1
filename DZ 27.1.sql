use dz27;
create table CarBrands (
ID int auto_increment not null unique primary key,
Titles varchar(20));

insert into CarBrands (Titles)
values ("Mazda"),
("Kia"),
("Volkswagen"),
("Hyundai"),
("Škoda");

create table CarModels (
ID int auto_increment not null unique primary key,
Titles varchar (20),
CarBrandID int,
foreign key (CarBrandID) references CarBrands(ID)
);

insert into CarModels (Titles, CarBrandID)
values("CX", 1),
("Sportage", 2),
("Golf", 3),
("Tucson", 4),
("Octavia", 5);

create table Users (
ID int auto_increment not null unique primary key,
FirstName varchar(20),
LastName varchar(20),
Email varchar(20),
Pasword varchar(20));

insert into Users (FirstName, LastName, Email, Pasword)
values ("Alex", "Browing", "Alex@gmail.com", 1111),
("Ali", "Larter", "Ali@gmail.com", 2222),
("Carter", "Horton", "Carter@gmail.com", 3333),
("Valerie", "Lewton", "Valerie@gmail.com", 4444),
("Daniel", "Roebuck", "Daniel@gmail.com", 5555);

create table Cars (
ID int auto_increment not null unique primary key,
Userid int,
CarBrandID int,
CarModelID int,
Mileage int,
InitialMileage int,
foreign key (Userid) references Users(ID),
foreign key (CarBrandID) references CarBrands(ID),
foreign key (CarModelID) references CarModels(ID)
);

insert into Cars (UserID, CarBrandID, CarModelID, Mileage, InitialMileage)
values (1, 1, 1, 10000, 11000),
(2, 2, 2, 12000, 13000),
(3, 3, 3, 14000, 15000),
(4, 4, 4, 16000, 17000),
(5, 5, 5, 18000, 19000);

