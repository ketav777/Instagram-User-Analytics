SELECT * FROM users
LEFT JOIN photos
ON users.id = photos.user_id
WHERE photos.user_id IS NULL;