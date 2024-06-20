# Adding data to your Tables

```sql
INSERT INTO cats(name, age)
VALUES ('Jetson', 7);

```

The above is an example of inserting a value into the cats table. Remember that the ; is
the end of the statement.

```sql

INSERT INTO cats (name, age)
VALUES ('Casper', 3);

```

## Select

So... how do we know that it worked?

```sql

SELECT * FROM cats;
-- This gets everything from the cats table.
```

## Multi-Inserts

Remember that the order matters

```sql

INSERT INTO cats(age, name)
VALUES(2, "Beth");
```

Flipping the order will result in an error.

This is why it is important to make sure your values match the insert.

So say we wanted to insert multiple rows at once?

```sql

INSERT INTO cats(name, age)
VALUES  ("Meatball", 5),
        ("Turkey", 1),
        ("Potato", 15);

```

## Not Null

What does the null column mean when you DESC a table?

This means that the null value is permitted into this field.

Null means that there is no value.

Null means that the value can be empty.

_NULL does not mean 0_.

A lot of times we do not want to have null.

### The Solution!

```sql

CREATE TABLE cats2 
    (
        name VARCHAR(100) NOT NULL,
        age INT NOT NULL
    );

```

This also changes the DESC of the table.

_SIDE NOTE_ - Many other relational database flavors don't like "". Instead it is good
practice to use ''. The way to escape a ' in a string is by using ```\'s``.

## Default Values

When we create a table we can create a default value for a column.

```sql

CREATE TABLE cats3 
(
    name VARCHAR(100) DEFAULT 'unnamed',
    age INT DEFAULT 99
);
```

### Do we need to specify not null and default?

Settings a default value does not mean a value can never be null. You can use them in
tandem together.

Null isn't a bad thing just plan for it.

```sql
CREATE TABLE cats4  (    
    name VARCHAR(20) NOT NULL DEFAULT 'unnamed',    
    age INT NOT NULL DEFAULT 99 
);
```

## Primary Keys

Right now, all of our tables could have duplicate rows.

_Important_: This is something that we should do for all our tables.

It is a way to keep our data unique since the ID will be unique.

We will declare a **primary key** column.

```sql

CREATE TABLE unique_cats (
    cat_id INT NOT NULL PRIMARY KEY,
    name VARCHAR(100),
    age INT
);
```

There is another syntax:

```sql

CREATE TABLE unique_cats (
    cat_id INT NOT NULL,
    name VARCHAR(100),
    age INT,
    PRIMARY KEY(cat_id)
);
```

It is redundant to state a primary key as NOT NULL because that key can never be null.

### Auto-Increment

This will make the column automatically increment automatically starting at 1. This can
be changed.

```sql

CREATE TABLE unique_cats (
    cat_id INT AUTO_INCREMENT,
    name VARCHAR(100),
    age INT,
    PRIMARY KEY(cat_id)
);
```