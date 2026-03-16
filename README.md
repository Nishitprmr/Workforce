# SQL Worker Management Database

## Project Overview

This project demonstrates the creation and management of a simple **Employee/Worker database using MySQL**.
The database contains multiple related tables to store information about workers, their bonuses, and their job titles.

The purpose of this project is to practice **basic SQL operations**, including:

* Database creation
* Table creation
* Data insertion
* Data retrieval

## Database Name

`workforce_db`

## Tables Included

### 1. Worker

This table stores the basic details of each worker in the organization.

Columns:

* `Worker_ID` – Unique ID for each worker
* `First_Name` – Worker’s first name
* `Last_Name` – Worker’s last name
* `Salary` – Worker’s salary
* `Joining_Date` – Date and time when the worker joined
* `Department` – Department where the worker works

### 2. Bonus

This table stores bonus information given to workers.

Columns:

* `Worker_REF_ID` – Reference ID linking to the Worker table
* `Bonus_Date` – Date when the bonus was awarded
* `Bonus_Amount` – Bonus amount given to the worker

### 3. Title

This table stores the job titles of workers.

Columns:

* `Worker_REF_ID` – Reference ID linking to the Worker table
* `Worker_Title` – Job title of the worker
* `Affected_From` – Date from which the title is effective

## Features

* Demonstrates relational database design
* Shows how multiple tables can be connected using reference IDs
* Includes sample data for testing SQL queries

## Technologies Used

* MySQL
* SQL

## Learning Purpose

This project is useful for practicing:

* SQL table creation
* Insert statements
* Data relationships between tables
* Basic database management
