USE adlister_db;

INSERT INTO users (id,username, email, password) VALUES
(1,'jim','jim@jimmail.com','jimothy');

INSERT INTO ads (user_id, title, description) VALUES
(1,'New used Couch','Found this couch, new - like used: never been sat upon');
