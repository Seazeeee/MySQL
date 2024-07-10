# Aggregate Functions

## Count

It lets you count how much of something is in a database

```sql

SELECT COUNT(*) FROM books;

```

\* means rows - This would return 19 rows

You can also use DISTINCT as well

```sql

SELECT COUNT(DISTINCT author_fname) FROM books;

```

What about how many titles contain the word "the"

```sql
SELECT COUNT(*) FROM books WHERE title LIKE '%the';
```

## GROUP BY

Summarizes or aggregates identical data into single rows.

```sql

SELECT author_lname FROM books
GROUP BY author_lname;
```

What if we COUNT how many books each author has written?

```sql
SELECT author_lname, COUNT(*) AS books_written FROM books
GROUP BY author_lname ORDER BY books_written DESC;
```

## MIN and MAX

Min helps us find the minimum value inside a column or group and max is the opposite.
