DROP DATABASE adlister_db IF EXISTS;

CREATE DATABASE adlister_db;

USE adlister_db;

    CREATE TABLE Ads (
        id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY(id),
        userID INT NOT NULL,
        title VARCHAR(50) NOT NULL,
        decription TEXT NOT NULL
    );