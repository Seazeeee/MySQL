# What is a database?

What makes something a database?

1. A collection of data. 

An example is a phone book. These phone books have entries that are organized by their
last name. They all have a corresponding phone number.

If we had to find somebodies phone number, what would we do?
- Flip to the last name, and find the first name.

However, what if you had to go through every entry and find a specific name. This could be true for a multitude of different questions.

2. A method for accessing and manipulating data.

Database create a way to find, update, delete, and go through a lot of more complex
questions easier.

### Database vs. Database Management System (DBMS)

A collection of data is different than a interface that displays that data.

- The Database
A giant file that houses all the data we need.

- DBMS
A way for us to talk to our database. We talk to the DBMS, it talks to the database.

> A structured set of computerized data with an accessible interface.

# MySQL vs. SQL

### What are they?
- Structured Query Language
The language we use to "talk" with our databases. We normally call these queries.

When working with MySQL, we are mostly writing SQL.
This means that SQL is not unique to either MySQL or any others. (SQLite, PostgreSQL)

There are Slight Differences in Syntax.

There is a SQL standard. These DBMS are tasked with implementing that standard to make it work.

1. Once you learn SQL, it's pretty easy to switch to another DB that uses SQL
2. What makes databases (DBMS) unique is their features, not SQL