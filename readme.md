# Transport order form
***
This is a web application using Spring Security and Bootstrap.

## Table of Contents
* [General Info](#general-information)
* [Features](#features)
* [Technologies Used](#technologies-used)
* [Setup](#setup)
* [Project Status](#project-status)
* [Room for Improvement](#room-for-improvement)


## General Information 


## Features 
This project includes:
- Login page
- Form page
- Displaying data retrieved from the form as a transport order

![login page](./img/login.png)

![form page](./img/form.png)

![transport order](./img/order.png)

## Technologies Used
- Java - version 15.0.1.0
- Spring - version 5.1.9.Release
- Maven
- Bootstrap 3
- Javax.servlet - version 1.2.1
- Tomcat - version 9.0

## Setup

###### 1. Clone this reposidory to your desktop

###### 2. Install and Configure Database
[Install MySQL database](https://dev.mysql.com/doc/refman/5.7/en/installing.html)

###### 3. Start Database Service
Create database

```
CREATE DATABASE  IF NOT EXISTS `hb_routes_tracker`;
USE `hb_routes_tracker`;

DROP TABLE IF EXISTS `routes`;

CREATE TABLE `routes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `route_name` varchar(100) DEFAULT NULL,
  `grade` varchar(10) DEFAULT NULL,
  `country` varchar(45) DEFAULT NULL,
  `climbing_area` varchar(100) DEFAULT NULL,
  `crag_or_sector` varchar(100) DEFAULT NULL,
  `style` varchar(5) DEFAULT NULL,
  `date_of_ascent` date DEFAULT NULL,
  `note` text DEFAULT NULL,

  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
```

###### 4. Install and Configure Web Server
[Setup and Install Apache Tomcat Server in Eclipse Development Environment](https://crunchify.com/step-by-step-guide-to-setup-and-install-apache-tomcat-server-in-eclipse-development-environment-ide/)

## Project Status
Project is in progress.

## Room for Improvement
To do:
- presenting the climbing activity in the form of charts
- expansion of the database with accounts for multiple users

