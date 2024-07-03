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
