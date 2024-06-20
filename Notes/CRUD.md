# What is CRUD?

The four basic actions:
    - Create
    - Read
    - Update
    - Delete

## The Basics of CRUD in MySQL

### Create

We learned a lot about this.

```sql

INSERT INTO cats(name, age)
VALUES ('Tacos', 17)

```

> We are going to focus on the RUD part of CRUD.

### Read

How do we retrieve ( read ) data thats already in a table?

We use SELECT

```sql

SELECT * FROM cats

```

* = "Give Me All Columns"

We can also narrow down our expression

```sql

SELECT name FROM cats;

```

