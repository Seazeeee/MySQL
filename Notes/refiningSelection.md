# Refining Selections

- More Weapons In The Arsenal

## Distinct

We can use this to get rid of duplicate results

```sql

SELECT DISTINCT author_lname FROM books;

```

What if we wanted to get distinct author full names?

```sql

SELECT DISTINCT CONCAT(author_fname, ' ', author_lname) FROM books;

```

While this works, there is a second way

```sql

SELECT DISTINCT author_fname, author_lname FROM books;

```

## ORDER BY

Allows us to sort the data in a specified way

```sql

SELECT author_lname FROM books ORDER BY author_lname;

```

Important to note that is automatically orders by Ascending.

We can change this using "DESC"

```sql

SELECT author_lname FROM books ORDER BY author_lname DESC;

```

We can also do numbers as well.

```sql

SELECT title, pages FROM books ORDER BY pages DESC;

```

We can also order by things that we aren't selecting.

### More ORDER BY

We may come across something like this in the wild

```sql

SELECT title, author_fname, author_lname
FROM books ORDER BY 2;

```

This means to order by the second column that we have selected.

This is kinda clunky since its harder to read by a quick glance.

We can also order by multiple columns

```sql

SELECT author_fname, author_lname FROM books
ORDER BY author_fname, author_lname;

```

This orders by fname first then, by the last name

You can also sort one by ascending and another by descending.

```sql

SELECT author_fname, author_lname FROM books
ORDER BY author_fname, author_lname DESC;

```

You can also create a new column name (CONCAT) and then sort that column name as well.

Note: This is not apart of the database.

```sql
SELECT CONCAT(author_fname, ' ', author_lname) AS author FROM books ORDER BY author;
```

## Limit

Lets us control the number of results we get back.

```sql
SELECT book_id, title, released_year FROM books ORDER BY released_year
LIMIT 5;
```

This will return the first 5 results

We don't have to only get the first 5.

We can also declare a range of numbers

```sql
SELECT book_id, title, released_year FROM books ORDER BY released_year
LIMIT 0, 5;
```

This will give us the 0->5

However if we changed this to 1 we would only get 4.

## Like

This lets you find something specifically in a DB

Example:

```sql

SELECT title, author_fname, author_lname FROM books
WHERE author_fname = 'David'
```

However this needs to be an exact match

Most of the time we want to do some _fuzzy_ searching.

```sql

WHERE author_fname LIKE '%da%'

```

The '%' are wildcards and it means that there can be 0 or more characters on each side

```sql
SELECT title, author_fname, author_lname FROM books
WHERE author_fname LIKE '%da%';
```

There is another wildcard character that is '\_\_\_\_'

This means exactly one character

```sql

SELECT * FROM books WHERE author_fname LIKE '____';

```

So this means 4 characters each '\_' represents one character
