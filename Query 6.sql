SELECT (((SELECT DISTINCT COUNT(*) FROM photos) +
		 (SELECT DISTINCT COUNT(*) tags) +
         (SELECT DISTINCT COUNT(*) FROM photo_tags)) /
         (SELECT DISTINCT COUNT(*) FROM users)) 
AS `average number of posts per user`;



SELECT ((SELECT DISTINCT COUNT(*) FROM photos) / (SELECT DISTINCT COUNT(*) FROM users))
AS `average number of photos per user`;
