CREATE DATABASE hhudatamgt;
USE hhudatamgt;

create table users (
	id  int(3) NOT NULL AUTO_INCREMENT,
	username varchar(45) NOT NULL,
	email varchar(220) NOT NULL,
	fullname varchar(220) NOT NULL,
	password varchar(45) DEFAULT NULL,
	PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

create table students (
	id  int(3) NOT NULL AUTO_INCREMENT,
	student_no varchar(120) NOT NULL,
	name varchar(220) NOT NULL,
	email varchar(220) NOT NULL,
	country varchar(120),
	college varchar(500) NOT NULL,
	PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;