WITH rht AS
(
	SELECT tag_id , count(*) AS COUNT FROM photo_tags
	GROUP BY tag_id
	ORDER BY tag_id DESC
)

SELECT * FROM tags
LEFT JOIN rht
ON tags.id = rht.tag_id
ORDER BY COUNT DESC
LIMIT 5;
