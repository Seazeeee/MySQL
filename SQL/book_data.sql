-- SELECT title FROM books WHERE title LIKE '%stories%';

-- SELECT title, pages FROM books ORDER BY pages DESC LIMIT 1;

-- SELECT CONCAT(title, ' - ', released_year) AS summary FROM books
--                                                ORDER BY released_year DESC LIMIT 3;

-- SELECT title, books.author_lname FROM books WHERE books.author_lname LIKE '% %'

-- SELECT title, books.released_year, books.stock_quantity FROM books
-- ORDER BY stock_quantity, released_year DESC LIMIT 3;

-- SELECT title, books.author_lname FROM books
-- ORDER BY author_lname, title;

-- SELECT CONCAT('MY FAVORITE AUTHOR IS ', upper(books.author_fname), ' ', upper(books.author_lname), '!')
-- AS yell FROM books
-- ORDER BY author_lname;