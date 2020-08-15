![postgres](https://github.com/Radhima/PostgreSQL/blob/gh-pages/postgres.png?raw=true)
# Overview of PostgreSQL

PostgreSQL is one of the most used open-source Database Management System (DBMS) and is extremely popular for its features. This is a handnote overview and documentation of PostgreSQL database management system for anyone who wants to start their journey with PostgreSQL. 

## What is a database?

A database is a collection of data. Information is stored in database in forms of tables. We want our tables to be redundant. One table might have some kind of relationship with other tables. The type of database system where relations of tables are maintained, are known as relational database system. PostgreSQL is an object-relational database system (not database).

## Database Management System and PostgreSQL

A Database Management System (DBMS) is a system that manages databases where databases can be-
* stored
* retrieved and/or
* manipulated


PostgreSQL, also known as Postgres, is an open source object-relational DBMS and has more than 30 years of active development on its core platform. SQL is the language for designing the data manipulation and management. Postgres is popular for its robustness, extensiveness, security, proven-architecture and the dedication of its open-source community developers. It runs on all major operating systems.

## Windows Installation:

Download the windows installer for postgres form [here](https://www.enterprisedb.com/downloads/postgres-postgresql-downloads). You can choose the latest stable version from here. The installer will guide to install postgres.

## Create roles:

To create a new role type the command:
```
CREATE ROLE role_name WITH OPTIONS

```
Here, options can be 

```
    SUPERUSER | NOSUPERUSER
    | CREATEDB | NOCREATEDB
    | CREATEROLE | NOCREATEROLE
    | CREATEUSER | NOCREATEUSER
    | INHERIT | NOINHERIT
    | LOGIN | NOLOGIN
    | CONNECTION LIMIT connlimit
    | [ ENCRYPTED | UNENCRYPTED ] PASSWORD 'password'
    | VALID UNTIL 'timestamp' 
    | IN ROLE rolename [, ...]
    | IN GROUP rolename [, ...]
    | ROLE rolename [, ...]
    | ADMIN rolename [, ...]
    | USER rolename [, ...]
    | SYSID uid 
    
```
If ```login``` option is not given, the role is not permitted to login. Similarly, other options give permission of the features to the roles.

For adding password separately the following command can be used:

```
\password USER_NAME

```
Then password and confirmation of password will be asked. Note that, whatever you type in the command will not be shown. The same command can be used for password update as well.

![login](https://user-images.githubusercontent.com/28762555/90152786-08339b00-ddaa-11ea-8da4-9351f3c49e03.png)

## Connecting to DB Server

From Command Prompt an user can connect with the following command:

```
psql -d database_name -U user_name

```

![connect1](https://user-images.githubusercontent.com/28762555/90221826-b54ef780-de2c-11ea-92c3-0357f8ebcdea.png)

For remote login, host and port should also be given:

```

psql -h host_name -p port_name -U user_name database_name

```

![connect](https://user-images.githubusercontent.com/28762555/90221385-f09cf680-de2b-11ea-98a1-fcbd67ac711c.png)

DON'T FORGET TO ADD THE BIN PATH OF POSTGRES TO ENVIRONMENT PATH VARIABLE IN ORDER TO RUN ```psql``` COMMAND FROM COMMAND PROMPT!

If already connected to a user then the following command can be used to connect to the database.
```
\c database_name
```

## Storing, retrieving and manipulating database:
We are going to use an art store database already designed in [here](https://github.com/Radhima/Art-Store-Database) as a demo. The database in that link is created on Oracle DBMS. Here, a PostgreSQL version of the same database is used.


### Storing in a database

To create a database, the 

```
CREATE DATABASE DATABASE_NAME;
```

command is passed. (Note to add semi-colon, otherwise the command will not be executed.) 

Then the user should be connected to the database in the way mentioned above.

#### Tables
Databases are made of tables. Each table is an entity. We don’t want all the information in a simple table as they will be hard to retrieve and manipulate. Rather the tables are created in object redundant form.  A table have rows and columns. Here columns are the features of a single entity while row is an entity itself. To create a table feature-names are added. The command for creating table is 

```
    CREATE TABLE TABLE_NAME(
    COL_NAME_1 DATA_TYPE CONSTRAINTS_IF_ANY,
      ...,
      ...,
      ...,
    COL_NAME_N DATA_TYPE CONSTRAINTS_IF_ANY,
    )
    ;
```

Additional Constraints can be added on the table columns. The example of additional constraints are: not null, unique, primary key, foreign key etc.
While inserting data on the table if constraints are not met, then an error message will generate.

The SQL command from [here](https://github.com/Radhima/PostgreSQL/blob/master/tables.sql) was inserted to get the following output:

![Table creation using constraints](https://user-images.githubusercontent.com/28762555/90130658-a6186d00-dd8c-11ea-8d01-d70e4b828c05.png)

Then if we want to see the created tables we use the command:
    ```/d```

The resultant output when the above commands are inserted is shown here:

![Tables](https://user-images.githubusercontent.com/28762555/89862146-27270700-dbc9-11ea-94fa-a779f9fec1d5.png)
    

#### Inserting in a table
To insert in a table the syntax to be used is:

```
INSERT INTO TABLE_NAME(
COLUMN_NAMES_SEPARATED_BY_COMMAS) 
VALUES (
VALUE_OF_COLUMNS_IN_SAME_ORDER)
;
```

Here, we see we may not add all columns to insert values. But not null constraints must be maintained. Again we can write column names in any order but values should be in same order as columns. We are using the demo values in [here](https://github.com/Radhima/PostgreSQL/blob/master/insert.sql) for the insertion. An example for the shipping table is shown below:

![Insert output](https://user-images.githubusercontent.com/28762555/90228709-8179cf00-de38-11ea-82b1-0f7653990494.png)

When there is a conflict on some columns due to constraints while inserting an `ON CONFLICT DO NOTHING` or `ON CONFLICT DO UPDATE` clause is added. The later is also known as upsert. The command is:

```
INSERT INTO TABLE_NAME(
COLUMN_NAMES_SEPARATED_BY_COMMAS) 
VALUES (
VALUE_OF_COLUMNS_IN_SAME_ORDER)
ON CONFLICT DO CONFLICT_ACTION
;

```

![on conflict do](https://user-images.githubusercontent.com/28762555/90228447-0c0dfe80-de38-11ea-89c5-87dc77286053.png)

### Retrieving from a database
To retrieve from a database we use ``` SELECT``` command. The command with other conditions can successfully retrieve the required data. These are described below:

#### Retrieving all column records from a single table
The command for this is:
```
SELECT * FROM TABLE_NAME;

```

This will output all the data for all columns of all records. For our demo database, the following output is generated:

![select all](https://user-images.githubusercontent.com/28762555/89909810-4a75a480-dc11-11ea-8311-d7dc98cb63fc.png)


#### Retrieving selected column records from a single table
Only required columns are selected for retrieval. The query is:

```
SELECT COLUMN_NAMES_SEPERATED_BY_COLUMN FROM TABLE_NAME;

```
When run on the same product table with selected columns, the generated output is:

![select some](https://user-images.githubusercontent.com/28762555/89909814-4c3f6800-dc11-11ea-8be7-58d80e238456.png)


#### Retrieving records based on conditions on column entry

The ```where``` keyword is used for conditions. The conditions can be comparing, range, string matching etc. Examples of these conditions are given below:

* Comparing: ```<>```, ```=```, ```<=```, ```>=```, ```<```, ```>``` are used for comparing values. 

![compare](https://user-images.githubusercontent.com/28762555/89909828-4fd2ef00-dc11-11ea-85ce-d25e17fbe621.png)

* Range: ```BETWEEN``` keyword is used for range comparison

![between](https://user-images.githubusercontent.com/28762555/89909821-4ea1c200-dc11-11ea-89ad-e2afc406255b.png)

* String Matching: ```LIKE``` and ```ILIKE``` keywords are used. Here ```ILIKE``` is case insensitive. Examples are:

![like](https://user-images.githubusercontent.com/28762555/89909790-45185a00-dc11-11ea-8ec1-d2df9db567b5.png)
![ilike](https://user-images.githubusercontent.com/28762555/89909843-53ff0c80-dc11-11ea-93a9-7f34fc654160.png)

#### Retrieving records with ```IN```
When there are multiple conditions, the query becomes too large and is complex and prone to error. ```IN``` keyword reduces the hassle:
![in](https://user-images.githubusercontent.com/28762555/89909847-5497a300-dc11-11ea-9545-be69ed9a9d06.png)


#### Retrieving ordered column records

The keyword ```ORDER BY``` is used for sorting the columns as listed in the query. To sort by ascending order ```ASC``` and descending order
```DESC``` keyword is used. The default order is ascending so ```ASC``` can be omitted. 

The query is:

```
SELECT COLUMN_NAMES FROM TABLE_NAME ORDER_BY COLUMN_NAMES ASC;

SELECT COLUMN_NAMES FROM TABLE_NAME ORDER_BY COLUMN_NAMES DESC;

```

The output for art store database is:

![asc](https://user-images.githubusercontent.com/28762555/89909804-49447780-dc11-11ea-9cb7-06bdcf0a6b43.png)

#### Retrieving distinct entries

The ```distinct``` keyword is used for this.

![distinct](https://user-images.githubusercontent.com/28762555/89909834-52354900-dc11-11ea-9a99-33eb31e00714.png)

#### Retrieving grouped records with ```GROUP BY``` and ```GROUP BY... HAVING```

The  ```GROUP BY``` and ```GROUP BY... HAVING``` keywords are used to select distinct elements grouped together in a column so that we can have aggregate functions on other columns to retrieve different values like- how many records, maximum, minimum of any record or sum of the records etc.

The query for this command is:

``` 
SELECT COLUMN_NAMES, AGGREGATE_FUNCTION(COLUMN_NAMES) 
FROM TABLE_NAME
GROUP_BY COLUMN_NAME
HAVING CONDITION;

```
Here, ```HAVING``` is used to filter necessary records for better retrieval.:

###### Two examples using ``` GROUP BY ``` clause are:
![example](https://user-images.githubusercontent.com/28762555/90130649-a44ea980-dd8c-11ea-94ca-51b002754546.png)
![example2](https://user-images.githubusercontent.com/28762555/90130653-a4e74000-dd8c-11ea-9017-dfdb5a0c5b7c.png)

###### In this example we add having filter using ```GROUP BY ... HAVING ```:
![example](https://user-images.githubusercontent.com/28762555/90130646-a31d7c80-dd8c-11ea-8bcc-5adc85e7a7f4.png)

REMEMBER, TO USE A COLUMN IN SELECT, YOU MUST HAVE THEM IN GROUP BY CLAUSE OR USE THEM WITHIN AGGREGATE FUNCTION

#### Joining two tables

Postgres is an object-realtional DBMS. Here, two tables may have a relation between them. We can join these two tables based on the relation. The ```JOIN``` clause used in the command joins the two tables based on a column which has foreign key references between the two tables. Join can be differenct types. These are:

* Inner join
* Left join
* Right join
* Full join

**Inner Join**: In this type of join, only the records that has the foreign key value for both the tables are retrieved. The command for this type of join is:

```
    SELECT COLUMNS_FROM_BOTH_TABLES,
    FROM TABLE_NAME1
    JOIN TABLE_NAME2
    ON FOREIGN_KEY_OF_TABLE1 = CORRESPONDING_FOREIGN_KEY_OF_TABLE2;
```

By default, ```JOIN``` is an inner join. An example is shown below:

![ecample1](https://user-images.githubusercontent.com/28762555/90132122-0dcfb780-dd8f-11ea-906d-4ac9c6e94be6.png)

**Left Join:** In this type of join, all records from the left table joined with right table are retrieved. Where record for right table is nil, is kept blank. An example is:

![example2](https://user-images.githubusercontent.com/28762555/90135674-d6fca000-dd94-11ea-908e-d51baffc0a6d.png)

Here, `left` keyword is added. We see, null values for table products joining c_order is shown here.

**Right Join:** This is similar to Left Join. Here, all records from the right table joined with left table are retrieved. Where record for left table is nil, is kept blank. `RIGHT` keyword is used here.

**Full Join:** In this type of join, all records from both the tables are retrieved. Here `Full` keyword is used.


#### Aggregate Functions

We have already seen an example of ```COUNT(*)``` before. This is an example of aggregate function. PostgreSQL has several more such functions which makes better retrieval of data based on calculations. A table of the aggregrate functions are given below:



| Function       | Description   | 
| :---------------------: | :------------------------------------------------------: |
| avg(expression)    | the average of all non-null input values |
| count(*)     | 	number of input rows    |
| max(expression) | returns maximum of input values   |
| min(expression) | returns minimum of input values   |
| sum(expression) | Sum of all not null input values  |


### Manipulating a database

Now comes data manipulation. These can be of different types:

 * Updating record of a table
 * Deleting records/tables/database etc

#### Updating record of a table:

To update column values of already existed record the following command is used:

```
    UPDATE table_name
    SET COLUMN_NAME = NEW_VALUES
    WHERE CONDITIONS;

```

![update](https://user-images.githubusercontent.com/28762555/90225814-cea77200-de33-11ea-94c0-cf52e15ce04c.png)

#### Deleting records/tables/database

To delete record the command is:

```
DELETE FROM TABLE
WHERE CONDITIONS;

```

Tables and Databases can be dropped using:

```
DROP TABLE TABLE_NAME;
DROP DATABASE_DATABASE_NAME;

```
REMEMBER! THIS IS A DANGEROUS COMMAND AS THE INFORMATION IS DELETED FOREVER. SO, MAKE SURE YOU HAVE BACKUP FOR THE DATA BEFORE DELETING!




## Some Important Notes:

* AND has higher precedence over OR operator. Use round braces if OR operator should be executed first
* Precedence  is left-associative
* String values of a record are to be quoted with single quote
* For database names with spaces, don't forget to quote them while connecting!
* Table and relation words are used interchangeably


## Some helpful psql commands:

| Command       | Description   | 
| :---------------------: | :------------------------------------------------------: |
| help   | Lists important commands |
| \\?     | 	Lists all psql commands    |
| \password ROLE_NAME |  for setting or changing password  |
| \l |  Lists all databases  |
| \d |  Lists all relations in a database  |
| \d TABLE_NAME |  Gives description of a relation  |
| \c DATABASE_NAME |  Connects to a database  |
| \i *file_name* |  Reads command from a file  |
| \o *file_name* |  Writes output to a file  |
| \x |  switch expanded display mode to on/off |
| \q |  quits psql connection  |


## References:

* [Official Documentation](https://www.postgresql.org/docs/)
* [Learn PostgreSQL Tutorial - Full Course for Beginners](https://www.youtube.com/watch?v=qw--VYLpxG4)

## Conclusion
There is a far lot to learn. You can use the [official documentation](https://www.postgresql.org/docs/) page for further learning. The best way to learn is to start is by getting into the mud. So, start by now! ^_^ 
