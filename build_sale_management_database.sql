-- CREATE DATABASE ordermanagement3;

use ordermanagement3;

CREATE TABLE Customer(
	cID INT PRIMARY key,
    cName VARCHAR(50),
    cAge INT
);

CREATE TABLE `Order`(
	oID int primary key,
    cID INT,
    cDate DATE,
    oTotalPrice FLOAT,
    foreign key (cID) references Customer (cID)
);

CREATE TABLE Product(
	pID INT primary key,
    pName VARCHAR(50),
    pPrice FLOAT
);

CREATE TABLE OrderDetail(
	oID INT NOT null,
    pID int NOT null,
    odQTY INT,
    primary key (pID,oID),
    foreign key (oID) references `Order` (oID),
    foreign key (pID) references Product (pID)
);
