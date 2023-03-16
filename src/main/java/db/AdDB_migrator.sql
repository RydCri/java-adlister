USE adlister_db;
DROP TABLE Ads;
    CREATE TABLE Ads (
        id INT UNSIGNED NOT NULL AUTO_INCREMENT,
        userID INT NOT NULL,
        title VARCHAR(50) NOT NULL,
        description VARCHAR(300) NOT NULL,
        PRIMARY KEY (id)
    );