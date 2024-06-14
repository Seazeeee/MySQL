# Creating a Database

We have a database server that we have already setup. (SQL)

These can house multiple different databases that can have nothing else to do with each
other.

```SQL

show database;

```

If we would like to create our own database we can use this command.

```SQL

CREATE DATABASE <name>;

CREATE DATABASE soap_store;

CREATE DATABASE DogApp;

```

## Dropping Databases

This will remove a database completely.

```SQL

DROP DATABASE <name>;

```

## How do we use a database?

```SQL

USE <database_name>;

```

## Tables

This is what we use to hold data within a database.

*This only applies to relational databases', at least.*

> A collection of related data held in a structured format within a database

Quick Example using Cats.

| Name | Breed | Age
| Blue | Scottish Fold | 1
| Rocket | Persian | 3
| Monty | Tabby | 10
| Same | Munchkin | 5

Databases are made up of lots of tables.
