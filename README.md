# PostgreSQL

An overview of PostgreSQL database

# What is a database?

A database is a collection of data. Information are stored in database in forms of tables. We want our tables to be redundant. One table might have some kind of relationship with other tables. The type of database system where relations of tables are maintained, are known as relational database system. PostgreSQL is an object-relational database system (not database).

# Database Management System and PostgreSQL

A Database Management System (DBMS) is a system that manages databases where databases can be-
* stored
* manipulated or
* retrieved
 PostgreSQL, also known as Postgres, is an open source object-relational DBMS and has more than 30 years of active development on its core platform. SQL is the language for designing the data manipulation and management. Postgres is popular for its robustness, extensiveness, security, proven-architecture and the dedication of its open-source community developers. It runs on all major operating systems.

# Windows Installation:

(Updating later)

# Connecting to DB Server
If database_name is an already created database then the following command is used to connect to the database.
\c database_name

# Storing, manipulating and retrieving database:
We are going to use an art store database already designed in [here](https://github.com/Radhima/Art-Store-Database) as a demo. The database in that link is created on Oracle DBMS. Here, a PostgreSQL version of the same database is used.


## Storing in a database

To create a database, the CREATE DATABASE; command is passed. (Note to add semi-colon, otherwise the command will not be executed.) 

Then the user should be connected to the database in the way mentioned above.

### Tables
Databases are made of tables. Each table is an entity. We don’t want all the information in a simple table as they will be hard to retrieve and manipulate. Rather the tables are created in object redundant form.  A table have rows and columns. Here columns are the features of a single entity while row is an entity itself. To create a table feature-names are added. The command for creating table is CREATE TABLE();
Additional Constraints can be added on the table columns. The example of additional constraints are: not null, unique, primary key, foreign key etc.
While inserting data on the table if constraints are not met, then an error message will generate.

### Inserting in a table
(to be updated later)