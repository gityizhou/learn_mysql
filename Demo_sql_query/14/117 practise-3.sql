SELECT
    title, CONVERT(AVG(rating),DECIMAL(3,2)) as avg_rating
FROM books 
LEFT JOIN reviews
    ON books.id=reviews.book_id
GROUP BY books.id
ORDER BY avg_rating DESC;

SELECT
    first_name, last_name, CONVERT(AVG(rating), DECIMAL(3,2)) AS avg_rating
FROM reviewers
LEFT JOIN reviews
    ON reviewers.id=reviews.reviewer_id
GROUP BY reviewers.id
ORDER BY avg_rating DESC;