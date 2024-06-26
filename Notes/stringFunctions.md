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

## Substring()

The first value you must past will be what you want to substring.

The following that is required is 2 numbers.

- The first one is where you want to start.
- The second one is how long you want to go to.

```sql

SELECT SUBSTRING('Hello World', 2, 4)

-- This produces "ello"
-- We started at the e and went 4 characters.

```

If we leave the second number blank it will assume you want the end.

We are able to something called "Dynamic Substrings" which involves tables and columns

Say we go back to our books tables

```sql

SELECT SUBSTRING(title, 1, 15) FROM Books;

```

> You can also replace SUBSTRING with SUBSTR()

### Combining CONCAT() and SUBSTR()

Some examples of using both of these string functions.

```sql

SELECT CONCAT(SUBSTR(title, 1, 10), '...') AS short_title  FROM books;

SELECT CONCAT(
               SUBSTR(author_fname, 1, 1), '.', SUBSTR(author_lname, 1, 1), '.'
       ) AS author_initials
FROM books

```

## Replace

Replace parts of strings

Important to note that we aren't updating or re-formatting our data in any way.

Ex:

```sql

SELECT REPLACE('Hello World', 'Hell', '%$#@')

-- This gives us "%$#@o World"
```

```sql

SELECT
        REPLACE ('cheese bread coffee milk', ' ', ' and ');

-- This gives us 'cheese and bread and coffee and milk'
```

Replace is also case-sensitive

```sql

SELECT REPLACE(title, ' ', '-') FROM books;

```

## Reverse

Will take whatever string we provide to it and reverse it.

```sql

SELECT REVERSE('Hello World')

-- This returns 'dlroW olleH'

```

## CHAR_LENGTH

Gives us the amount of characters in the given string.

```sql

SELECT CHAR_LENGTH('Hey!')

-- This returns 4

```

LENGTH and CHAR_LENGTH are different.

LENGTH checks for Bytes.

CHAR_LENGTH tells us the # of characters.

## LOWER() and UPPER()

These are self explanatory. They provide either all lower or upper of the given string.

## INSERT()

Adds a string into an already given string.

## LEFT() and RIGHT()

Gets either the most left or most right with a given amount of characters from that given point.

## REPEAT()

Repeats the given string the given amount of times.

## TRIM()

Removes either the given characters or the spaces on from and end. Can be used with the keyword LEADING, BOTH, and TRAILING. These are used to identify the location of what you want to trim.
