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

We can also combine multiple columns

```sql

SELECT name, age FROM cats;

```

#### The Where Clause

This keyword allows us to narrow down the selection.

We will use WHERE all the time. Not only for SELECT.

```sql

SELECT * FROM cats WHERE age=4;

```

This also goes with the above selection of specified columns

```sql

SELECT name, age FROM cats WHERE age=4;

```

WHERE can be completely independent of the select.

```sql

SELECT name FROM cats WHERE age=4;

```

_Aliases_.

Easier to read results

```sql
SELECT cat_id AS id, name FROM cats

```

AS keyword allows you to change the column name temporarily for that query.

### Update

How do we alter existing data?

UPDATE...SET is a pair

```sql

UPDATE cats SET breed = 'Shorthair'
WHERE breed = 'Tabby';

```

We can also update multiple columns at once.

```sql

UPDATE employees SET current_status = 'laid-off', 
last_name = 'who cares';

```

You don't need to have a WHERE but you often will so that you can target the change.

#### Good practice

Try SELECTing before you UPDATE.

### Delete

Time to learn how to...delete things

```sql

DELETE FROM cats WHERE name = 'Egg';

```

