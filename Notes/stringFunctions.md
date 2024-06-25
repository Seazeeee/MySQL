# String Functions

- Different built in operations that we can preform on string columns.

## Concat()

Combining strings or text together.

Takes any number of strings or pieces of text and then combines them together.

```sql

SELECT CONCAT('h','e','l','l','o')

```

This becomes useful when working with real data.

Imagine we have a first_name column and a last_name column. We could then use this to combine them into their full given name.

```sql

SELECT CONCAT(author_fname, ' ', author_lname) FROM books

```

The column name however looks bad since it isn't a real column name.

```sql

SELECT CONCAT(author_fname, ' ', author_lname) AS author_name FROM books

```

### CONCAT_WS

This means "with separator". This means the first value we give this command will be put between each value.

```sql

SELECT CONCAT_WS('-',title, author_fname, author_lname) FROM books;

```