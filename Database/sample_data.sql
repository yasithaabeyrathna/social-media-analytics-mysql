-- Insert Users
INSERT INTO Users (username, email, bio, profile_pic_url, location, device_info, created_at)
VALUES
('john_doe', 'john@example.com', 'Travel enthusiast', 'https://example.com/john.jpg', 'New York', 'iPhone 12', NOW()),
('jane_smith', 'jane@example.com', 'Food blogger', 'https://example.com/jane.jpg', 'Los Angeles', 'Pixel 5', NOW()),
('mike_wilson', 'mike@example.com', 'Tech Geek', 'https://example.com/mike.jpg', 'San Francisco', 'MacBook Pro', NOW()),
('lucy_adams', 'lucy@example.com', 'Fitness trainer', 'https://example.com/lucy.jpg', 'Chicago', 'iPad Pro', NOW()),
('emma_jones', 'emma@example.com', 'Photographer', 'https://example.com/emma.jpg', 'Miami', 'Galaxy S21', NOW()),
('oliver_brown', 'oliver@example.com', 'Music lover', 'https://example.com/oliver.jpg', 'Austin', 'Windows 10', NOW()),
('ava_davis', 'ava@example.com', 'Fashion influencer', 'https://example.com/ava.jpg', 'New York', 'iPhone 11', NOW()),
('ella_martin', 'ella@example.com', 'Yoga instructor', 'https://example.com/ella.jpg', 'Seattle', 'iPhone XR', NOW()),
('noah_clark', 'noah@example.com', 'Game streamer', 'https://example.com/noah.jpg', 'Las Vegas', 'Gaming PC', NOW()),
('liam_moore', 'liam@example.com', 'Book lover', 'https://example.com/liam.jpg', 'Boston', 'MacBook Air', NOW());

-- Insert Posts
INSERT INTO Posts (user_id, content, created_at)
VALUES
(1, 'Enjoying the sunset at the beach!', NOW()),
(2, 'Just cooked a delicious pasta recipe!', NOW()),
(3, 'Exploring the latest gadgets.', NOW()),
(4, 'Just finished an intense gym session!', NOW()),
(5, 'Captured a stunning cityscape today.', NOW()),
(6, 'Listening to new indie tracks.', NOW()),
(7, 'Trying out new fall fashion outfits.', NOW()),
(8, 'Day 3 of yoga retreat — peaceful vibes.', NOW()),
(9, 'Streaming Valorant tonight!', NOW()),
(10, 'Reading a classic novel on a rainy day.', NOW()),
(1, 'Beach sunsets never get old.', NOW()),
(2, 'This dessert recipe is a keeper!', NOW()),
(3, 'My review of the newest iPhone.', NOW()),
(4, 'Morning workout — done right!', NOW()),
(5, 'Photo walk results: urban magic.', NOW());

-- Insert Likes
INSERT INTO Likes (user_id, post_id, created_at)
VALUES
(2, 1, NOW()), (3, 1, NOW()), (4, 1, NOW()),
(1, 2, NOW()), (3, 2, NOW()), (5, 2, NOW()),
(1, 3, NOW()), (2, 3, NOW()), (6, 3, NOW()),
(4, 4, NOW()), (5, 4, NOW()), (6, 4, NOW()),
(6, 5, NOW()), (7, 5, NOW()), (8, 5, NOW()),
(9, 6, NOW()), (10, 6, NOW()), (1, 6, NOW()),
(2, 7, NOW()), (3, 7, NOW()), (4, 7, NOW()),
(5, 8, NOW()), (6, 8, NOW()), (7, 8, NOW()),
(8, 9, NOW()), (9, 9, NOW()), (10, 9, NOW()),
(1, 10, NOW()), (2, 10, NOW()), (3, 10, NOW());

-- Insert Comments
INSERT INTO Comments (user_id, post_id, comment_text, created_at)
VALUES
(2, 1, 'That view is incredible!', NOW()),
(3, 2, 'Recipe looks amazing!', NOW()),
(4, 3, 'Nice tech haul!', NOW()),
(5, 4, 'Crushing those workouts!', NOW()),
(6, 5, 'Beautiful photo!', NOW()),
(7, 6, 'Send me your playlist!', NOW()),
(8, 7, 'Where did you get that outfit?', NOW()),
(9, 8, 'That sounds so relaxing.', NOW()),
(10, 9, 'I’ll join your stream!', NOW()),
(1, 10, 'Perfect reading weather.', NOW()),
(2, 11, 'Such a calming view!', NOW()),
(3, 12, 'Link to recipe please!', NOW()),
(4, 13, 'Loved your iPhone review.', NOW()),
(5, 14, 'Crushed it again!', NOW()),
(6, 15, 'Love your street shots.', NOW());

-- Insert Follows
INSERT INTO Follows (follower_id, following_id, created_at)
VALUES
(1, 2, NOW()), (2, 3, NOW()), (3, 4, NOW()),
(4, 5, NOW()), (5, 6, NOW()), (6, 7, NOW()),
(7, 8, NOW()), (8, 9, NOW()), (9, 10, NOW()), (10, 1, NOW()),
(1, 5, NOW()), (2, 6, NOW()), (3, 7, NOW()), (4, 8, NOW()), (5, 9, NOW()),
(6, 10, NOW()), (7, 1, NOW()), (8, 2, NOW()), (9, 3, NOW()), (10, 4, NOW());

-- Insert Post Views
INSERT INTO Post_Views (user_id, post_id, created_at)
VALUES
(1, 1, NOW()), (2, 1, NOW()), (3, 1, NOW()),
(4, 2, NOW()), (5, 2, NOW()), (6, 2, NOW()),
(7, 3, NOW()), (8, 3, NOW()), (9, 3, NOW()),
(10, 4, NOW()), (1, 5, NOW()), (2, 6, NOW()),
(3, 7, NOW()), (4, 8, NOW()), (5, 9, NOW()),
(6, 10, NOW()), (7, 11, NOW()), (8, 12, NOW()),
(9, 13, NOW()), (10, 14, NOW()), (1, 15, NOW()),
(2, 10, NOW()), (3, 11, NOW()), (4, 12, NOW()), (5, 13, NOW());

-- Insert Tags
INSERT INTO Tags (tag_name)
VALUES
('travel'), ('food'), ('tech'), ('fitness'), ('photography'),
('music'), ('fashion'), ('yoga'), ('gaming'), ('books');

-- Insert Post_Tags
INSERT INTO Post_Tags (post_id, tag_id)
VALUES
(1, 1), (2, 2), (3, 3), (4, 4), (5, 5),
(6, 6), (7, 7), (8, 8), (9, 9), (10, 10),
(11, 1), (12, 2), (13, 3), (14, 4), (15, 5);