USE quickfeed_db;

SHOW TABLE STATUS LIKE 'Posts';

SELECT table_name,
data_length/1024/1024 AS data_mb,
index_length/1024/1024 AS index_mb
FROM information_schema.TABLES
WHERE table_schema='quickfeed_db'
AND table_name='Posts';

ALTER TABLE Posts DROP INDEX idx_content;
ALTER TABLE Posts DROP INDEX idx_post_type;
ALTER TABLE Posts DROP INDEX idx_is_visible;

SHOW TABLE STATUS LIKE 'Posts';

SELECT table_name,
data_length/1024/1024 AS data_mb,
index_length/1024/1024 AS index_mb
FROM information_schema.TABLES
WHERE table_schema='quickfeed_db'
AND table_name='Posts';