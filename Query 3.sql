WITH counts_table AS
(
	SELECT photo_id , count(*) AS COUNT FROM likes
	GROUP BY photo_id
	ORDER BY COUNT DESC
) ,

joined AS
(
	SELECT * FROM photos
	LEFT JOIN counts_table
	ON photos.id = counts_table.photo_id
)

SELECT * FROM users
LEFT JOIN joined
ON users.id = joined.user_id
ORDER BY COUNT DESC;