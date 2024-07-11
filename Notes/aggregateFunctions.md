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

Find the minimum release year

```sql

SELECT MIN(released_year) FROM books;

```

And vice-versa for the max

## SUB-QUERIES

Ex.

```sql
SELECT * FROM books
WHERE pages = (SELECT Min(pages)
                FROM books);
```

The () tell SQL To run that first.

These are what is known as sub-queries

This is better because other methods would require you to know how many rows are matching.

This is the benefit of using sub-queries over order by and limit.

## Grouping by multiple columns

You can concat a new column and name it by which you can sort by that column.

Ex:

```sql
SELECT CONCAT(author_fname, ' ', author_lname) AS author,  COUNT(*)
FROM books
GROUP BY author;
```

## MIN/MAX with Group By

Find the year each author published their first book

```sql
SELECT author_fname, author_lname, MIN(released_year) FROM books GROUP BY author_lname, author_fname;
```

## SUM

Adds things together

```sql
SELECT SUM(pages) FROM books;
```

Sum all pages each author has written

```sql
SELECT author_lname, SUM(pages) FROM books GROUP BY author_lname;
```

## AVG

Calculate the average on the whole table or by groups

```sql
SELECT AVG(released_year) FROM books;
```

Calculate the average stock quantity for books released in the same year?

```sql
SELECT released_year, AVG(stock_quantity)
FROM books;
GROUP BY released_year
```
