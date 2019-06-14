SELECT
    first_name,
    last_name,
    COUNT(rating) as COUNT,
    MIN(IFNULL(rating, 0)) as MIN,
    MAX(IFNULL(rating, 0)) as MAX,
    CONVERT(IFNULL(AVG(rating), 0), DECIMAL(3,2)) AS AVG,
    IF(COUNT(rating)>0, 'ACTIVE', 'INACTIVE') AS NEW_STATUS,
    CASE
        WHEN COUNT(rating)>0 THEN 'ACTIVE'
        ELSE "INACTIVE"
    END AS STATUS
FROM reviewers
LEFT JOIN reviews
    ON reviewers.id=reviews.reviewer_id
GROUP BY reviewers.id
ORDER BY AVG DESC;