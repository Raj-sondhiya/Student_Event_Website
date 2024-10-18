This project is a simple event management system with two main modules: Admin and User. The Admin can manage events (add, update, or delete), while the User can register on the website and sign up for events. The system uses MySQL for data storage, with tables for events, users, and event registrations.

## events Table
This table stores information about the events.

| Field             | Type        | Null | Key | Default        | Description                         |
|-------------------|-------------|------|-----|----------------|-------------------------------------|
| serialNo          | varchar(3)  | NO   | PRI | NULL           | Unique identifier for the event     |
| eName             | varchar(30) | NO   |     | NULL           | Name of the event                   |
| description       | text        | NO   |     | NULL           | Description of the event            |
| sDate             | date        | YES  |     | NULL           | Start date of the event             |
| eDate             | date        | YES  |     | NULL           | End date of the event               |
| coordinatorName   | varchar(30) | YES  |     | 'To be declared' | Name of the event coordinator     |
| coordinatorNumber | bigint(20)  | YES  |     | NULL           | Contact number of the coordinator   |
| venue             | text        | YES  |     | NULL           | Venue where the event is held       |
| image             | blob        | YES  |     | NULL           | Image associated with the event     |


## user Table
This table stores information about the users who can log in or register for events.


| Field    | Type        | Null | Key | Default | Description                         |
|----------|-------------|------|-----|---------|-------------------------------------|
| fname    | varchar(20) | YES  |     | NULL    | First name of the user              |
| lname    | varchar(20) | YES  |     | NULL    | Last name of the user               |
| email    | varchar(30) | NO   | PRI | NULL    | Email address (acts as primary key) |
| password | varchar(10) | YES  |     | NULL    | User password (not encrypted)       |


## registered_event Table
This table stores the registration details of participants for events.

| Field    | Type        | Null | Key | Default | Description                           |
|----------|-------------|------|-----|---------|---------------------------------------|
| name     | varchar(50) | YES  |     | NULL    | Name of the participant               |
| enroll   | varchar(30) | YES  |     | NULL    | Enrollment number                     |
| course   | varchar(20) | YES  |     | NULL    | Course of the participant             |
| semester | varchar(5)  | YES  |     | NULL    | Semester                              |
| contact  | varchar(15) | YES  |     | NULL    | Contact number of the participant     |
| email    | varchar(50) | YES  |     | NULL    | Email address of the participant      |
| serialNo | varchar(50) | YES  |     | NULL    | Serial number of the registered event |


Modules
1. Admin Module
Admins can perform the following actions:
•	Add Event: Create a new event by providing necessary details like name, description, date, coordinator details, venue, etc.
•	Update Event: Modify the details of existing events.
•	Delete Event: Remove events from the system.
2. User Module
Users can:
•	Register on the Website: Create an account by providing basic information (name, email, password, etc.).
•	Register for Events: After logging in, users can view available events and register for them.

**Setup Instructions**
Prerequisites:
•	MySQL installed
•	A suitable environment for running your project, like Spring Boot or any backend that supports MySQL

Steps to Set Up the Database:
1. Create the Database: Run the following SQL command to create the database:
*CREATE DATABASE minorproject;*

2. Create Tables: Use the following commands to create the tables within the minorproject database:

CREATE TABLE events (
    serialNo VARCHAR(3) NOT NULL PRIMARY KEY,
    eName VARCHAR(30) NOT NULL,
    description TEXT NOT NULL,
    sDate DATE DEFAULT NULL,
    eDate DATE DEFAULT NULL,
    coordinatorName VARCHAR(30) DEFAULT 'To be declared',
    coordinatorNumber BIGINT(20) DEFAULT NULL,
    venue TEXT DEFAULT NULL,
    image BLOB DEFAULT NULL
);

CREATE TABLE user (
    fname VARCHAR(20),
    lname VARCHAR(20),
    email VARCHAR(30) NOT NULL PRIMARY KEY,
    password VARCHAR(10)
);

CREATE TABLE registered_event (
    name VARCHAR(50),
    enroll VARCHAR(30),
    course VARCHAR(20),
    semester VARCHAR(5),
    contact VARCHAR(15),
    email VARCHAR(50),
    serialNo VARCHAR(50)
);



