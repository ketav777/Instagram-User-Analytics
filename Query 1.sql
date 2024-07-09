SELECT id , username , created_at ,
	extract(YEAR FROM created_at) AS yr,
    extract(MONTH FROM created_at) AS mnth,
    extract(DAY FROM created_at) AS dt,
    extract(HOUR FROM created_at) AS hr,
    extract(MINUTE FROM created_at) AS min,
    extract(SECOND FROM created_at) AS sec
FROM users
ORDER BY yr , mnth , dt , hr , min , sec
LIMIT 5;

SELECT id , username , created_at FROM users
ORDER BY created_at
LIMIT 5;