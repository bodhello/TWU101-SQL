/* 1. Who checked out the book 'The Hobbit’? */
SELECT member.name
	FROM member, checkout_item, book
	WHERE
	book.id = checkout_item.book_id AND
	member.id = checkout_item.member_id AND
	book.title = "The Hobbit";
/* Answer: Anand Beck */

/* 2. How many people have not checked out anything? */
SELECT Count(*)
	FROM member
	LEFT JOIN checkout_item ON member.id = checkout_item.member_id
	WHERE checkout_item.member_id IS NULL;
/* Answer: 37 */

/* 3. What books and movies aren't checked out? */
SELECT book.title
	FROM book
	LEFT JOIN checkout_item ON book.id = checkout_item.book_id
	WHERE checkout_item.book_id IS NULL
	UNION ALL
SELECT movie.title
	FROM movie
	LEFT JOIN checkout_item ON movie.id = checkout_item.movie_id
	WHERE checkout_item.movie_id IS NULL;

/* Answer:
		Fellowship of the Ring
		1984
		Tom Sawyer
		Catcher in the Rye
		To Kill a Mockingbird
		Domain Driven Design
		Thin Red Line
		Crouching Tiger, Hidden Dragon
		Lawrence of Arabia
		Office Space */

/* 4. Add the book 'The Pragmatic Programmer', and add yourself as a member. Check out 'The Pragmatic Programmer'. Use your query from question 1 to verify that you have checked it out. Also, provide the SQL used to update the database. */
INSERT INTO book (id, title) VALUES (11, "The Pragmatic Programmer");
INSERT INTO member (id, name) VALUES (43, "Bodhi Alarcon");
INSERT INTO checkout_item (member_id, book_id) VALUES (43, 11);
SELECT member.name
	FROM member, checkout_item, book
	WHERE
	book.id = checkout_item.book_id AND
	member.id = checkout_item.member_id AND
	book.title = "The Pragmatic Programmer";

/* 5. Who has checked out more that 1 item? Tip: Research the GROUP BY syntax. */

SELECT member.name, Count(checkout_item.member_id)
	FROM member, checkout_item
	WHERE member.id = checkout_item.member_id
	GROUP BY member.name
	HAVING Count(checkout_item.member_id) > 1;
/* Answer: Anand Beck|3, Frank Smith|3 */