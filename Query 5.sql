SELECT dayname(created_at) AS dname , count(*) AS COUNT FROM users
GROUP BY dname
ORDER BY COUNT DESC;