SELECT
    first_name, last_name, CONVERT(AVG(rating), DECIMAL(3,2)) AS avg_rating
FROM reviewers
INNER JOIN reviews
    ON reviewers.id=reviews.reviewer_id
GROUP BY reviewers.id
ORDER BY avg_rating DESC;