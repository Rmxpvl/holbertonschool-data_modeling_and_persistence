CREATE TABLE books (
    id INTEGER PRIMARY KEY,
    title TEXT NOT NULL,
    author TEXT NOT NULL,
    genre TEXT NOT NULL,
    price REAL,
    stock INTEGER CHECK (stock >= 0),
    published_year INTEGER
);