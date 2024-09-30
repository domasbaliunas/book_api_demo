SET client_encoding = 'UTF8';

CREATE DATABASE booksdb WITH 
    ENCODING = 'UTF8'
    LC_COLLATE = 'lt_LT.UTF-8'
    LC_CTYPE = 'lt_LT.UTF-8'
    TEMPLATE = template0;

\c booksdb

CREATE TABLE book (
    id SERIAL PRIMARY KEY,
    author VARCHAR NOT NULL,
    title VARCHAR NOT NULL,
    year INT NOT NULL,
    rating INT 
);

INSERT INTO book (id, title, author, year, rating) VALUES
(1, 'To Kill a Mockingbird', 'Harper Lee', 1960, 5),
(2, '1984', 'George Orwell', 1949, 5),
(3, 'Pride and Prejudice', 'Jane Austen', 1813, NULL),
(4, 'The Great Gatsby', 'F. Scott Fitzgerald', 1925, 4),
(5, 'Moby Dick', 'Herman Melville', 1851, NULL),
(6, 'War and Peace', 'Leo Tolstoy', 1869, NULL),
(7, 'The Catcher in the Rye', 'J.D. Salinger', 1951, 4),
(8, 'Crime and Punishment', 'Fyodor Dostoevsky', 1866, 5),
(9, 'The Brothers Karamazov', 'Fyodor Dostoevsky', 1880, 5),
(10, 'The Hobbit', 'J.R.R. Tolkien', 1937, 5),
(11, 'Brave New World', 'Aldous Huxley', 1932, NULL),
(12, 'Les Misérables', 'Victor Hugo', 1862, NULL),
(13, 'Anna Karenina', 'Leo Tolstoy', 1878, NULL),
(14, 'Fahrenheit 451', 'Ray Bradbury', 1953, 4),
(15, 'The Alchemist', 'Paulo Coelho', 1988, 4),
(16, 'Don Quixote', 'Miguel de Cervantes', 1615, 4),
(17, 'The Old Man and the Sea', 'Ernest Hemingway', 1952, 3),
(18, 'A Tale of Two Cities', 'Charles Dickens', 1859, NULL),
(19, 'Ulysses', 'James Joyce', 1922, NULL),
(20, 'The Lord of the Rings', 'J.R.R. Tolkien', 1954, 5),
(21, 'Wuthering Heights', 'Emily Brontë', 1847, NULL),
(22, 'Frankenstein', 'Mary Shelley', 1818, 4),
(23, 'Madame Bovary', 'Gustave Flaubert', 1857, NULL),
(24, 'The Picture of Dorian Gray', 'Oscar Wilde', 1890, 4),
(25, 'Dracula', 'Bram Stoker', 1897, NULL),
(26, 'One Hundred Years of Solitude', 'Gabriel Garcia Marquez', 1967, 5),
(27, 'The Sound and the Fury', 'William Faulkner', 1929, 4),
(28, 'The Grapes of Wrath', 'John Steinbeck', 1939, 4),
(29, 'Lolita', 'Vladimir Nabokov', 1955, NULL),
(30, 'Beloved', 'Toni Morrison', 1987, 4),
(31, 'Invisible Man', 'Ralph Ellison', 1952, NULL),
(32, 'The Trial', 'Franz Kafka', 1925, 4),
(33, 'Jane Eyre', 'Charlotte Brontë', 1847, 5),
(34, 'Heart of Darkness', 'Joseph Conrad', 1899, 3),
(35, 'Slaughterhouse-Five', 'Kurt Vonnegut', 1969, 4),
(36, 'The Stranger', 'Albert Camus', 1942, 4),
(37, 'The Metamorphosis', 'Franz Kafka', 1915, NULL),
(38, 'Catch-22', 'Joseph Heller', 1961, 4),
(39, 'The Bell Jar', 'Sylvia Plath', 1963, NULL),
(40, 'The Sun Also Rises', 'Ernest Hemingway', 1926, 4);
