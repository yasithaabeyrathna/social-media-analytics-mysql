--01.
SELECT 
    u.username,
    COUNT(DISTINCT l.like_id) AS total_likes,
    COUNT(DISTINCT c.comment_id) AS total_comments,
    COUNT(DISTINCT f.follower_id) AS total_followers,
    (COUNT(DISTINCT l.like_id) + COUNT(DISTINCT c.comment_id) + COUNT(DISTINCT f.follower_id)) AS engagement_score
FROM users u
LEFT JOIN posts p ON u.user_id = p.user_id
LEFT JOIN likes l ON p.post_id = l.post_id
LEFT JOIN comments c ON p.post_id = c.post_id
LEFT JOIN follows f ON u.user_id = f.following_id
GROUP BY u.user_id
ORDER BY engagement_score DESC
LIMIT 5;

--02.
SELECT 
    p.post_id,
    u.username,
    LEFT(p.content, 100) AS snippet,
    COUNT(l.like_id) AS like_count
FROM posts p
JOIN users u ON p.user_id = u.user_id
LEFT JOIN likes l ON p.post_id = l.post_id
GROUP BY p.post_id
ORDER BY like_count DESC
LIMIT 5;

--03.
SELECT 
    DATE(created_at) AS signup_date,
    COUNT(*) AS new_users
FROM users
WHERE created_at >= CURDATE() - INTERVAL 7 DAY
GROUP BY signup_date
ORDER BY signup_date DESC;

--04.
SELECT 
    t.tag_name,
    COUNT(*) AS usage_count
FROM post_tags pt
JOIN tags t ON pt.tag_id = t.tag_id
GROUP BY pt.tag_id
ORDER BY usage_count DESC
LIMIT 5;

--05.
SELECT 
    p.post_id,
    u.username,
    COUNT(DISTINCT l.like_id) AS likes,
    COUNT(DISTINCT c.comment_id) AS comments,
    COUNT(DISTINCT v.view_id) AS views,
    (COUNT(DISTINCT l.like_id) + COUNT(DISTINCT c.comment_id) + COUNT(DISTINCT v.view_id)) AS engagement_score
FROM posts p
JOIN users u ON p.user_id = u.user_id
LEFT JOIN likes l ON p.post_id = l.post_id
LEFT JOIN comments c ON p.post_id = c.post_id
LEFT JOIN post_views v ON p.post_id = v.post_id
GROUP BY p.post_id
ORDER BY engagement_score DESC
LIMIT 5;