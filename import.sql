CREATE DATABASE scraper;

CREATE TABLE macbook_air (
    id INT(255) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    winkel VARCHAR(255) NOT NULL,
    prijs INT(255) NOT NUll,
    link VARCHAR(255) NOT NULL,
    datum DATE DEFAULT CURRENT_TIMESTAMP
);