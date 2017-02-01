-- https://kripken.github.io/sql.js/GUI/

DROP TABLE IF EXISTS Users;
DROP TABLE IF EXISTS Posts;

-- 5. Draw tables structure of DB with next info:

-- Users table – name, email, birthday

CREATE TABLE Users
	(id	integer, name text, email text, birthday date)
;

INSERT INTO Users
	(id, name, email, birthday)
VALUES
	(1, 'Alex', 'alex@mail.net', '2000-01-15'),
	(2, 'Felix', 'felix@mail.net', '1999-02-16'),
	(3, 'John', 'john@mail.net', '1998-03-17'),
	(4, 'Kolia', 'kolia@mail.net', '1997-04-18'),
	(5, 'Petia', 'petia@mail.net', '1996-05-19')
;

-- Posts table – title, body

CREATE TABLE Posts
	(id integer, title text, body text)
;
INSERT INTO Posts
	(id, title, body)
VALUES
	(1, 'post one', 'some text one'),
	(2, 'post two', 'some text two'),
	(3, 'post three', 'some text three'),
	(4, 'post four', 'some text four'),
	(5, 'post five', 'some text five')
;

-- a) Write SQL query to get all users older than 18 years

SELECT id, name, email, birthday FROM Users WHERE birthday < DATE('NOW', '-18 years');

-- b) Write SQL query to get all users with their posts.

SELECT Users.id, name, title, body FROM Users, Posts WHERE Users.id=Posts.id;