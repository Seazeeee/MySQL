-- SELECT COUNT(*) AS num_books FROM books;

-- SELECT books.released_year, COUNT(*) AS total_released FROM books GROUP BY released_year;

-- SELECT SUM(books.stock_quantity) FROM books;

-- SELECT CONCAT(books.author_fname, ' ', books.author_lname) as Author,
--        AVG(released_year) FROM books
-- GROUP BY Author;

-- SELECT CONCAT(books.author_fname, ' ', books.author_lname) as Author FROM Books
--                                                                      WHERE pages=(SELECT MAX(pages) FROM books);

-- SELECT books.released_year AS year, COUNT(*) AS '# books', AVG(pages) AS 'avg pages'
-- FROM books GROUP BY released_year ORDER BY released_year;