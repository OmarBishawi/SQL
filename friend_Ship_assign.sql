INSERT INTO users (first_name, last_name, created_at, updated_at) VALUES
('Chris', 'Baker', NOW(), NOW()),
('Jessica', 'Davidson', NOW(), NOW()),
('James', 'Johnson', NOW(), NOW()),
('Diana', 'Smith', NOW(), NOW());
-- Verify the inserted users and their IDs
SELECT * FROM users;

-- Manually insert data into the `friendships` table using the verified user IDs
INSERT INTO friendships (user_id, friend_id, created_at, updated_at) VALUES
((SELECT id FROM users WHERE first_name='Chris' AND last_name='Baker'), 
 (SELECT id FROM users WHERE first_name='Jessica' AND last_name='Davidson'), NOW(), NOW()),
((SELECT id FROM users WHERE first_name='Chris' AND last_name='Baker'), 
 (SELECT id FROM users WHERE first_name='James' AND last_name='Johnson'), NOW(), NOW()),
((SELECT id FROM users WHERE first_name='Chris' AND last_name='Baker'), 
 (SELECT id FROM users WHERE first_name='Diana' AND last_name='Smith'), NOW(), NOW()),
((SELECT id FROM users WHERE first_name='Diana' AND last_name='Smith'), 
 (SELECT id FROM users WHERE first_name='Chris' AND last_name='Baker'), NOW(), NOW()),
((SELECT id FROM users WHERE first_name='James' AND last_name='Johnson'), 
 (SELECT id FROM users WHERE first_name='Chris' AND last_name='Baker'), NOW(), NOW()),
((SELECT id FROM users WHERE first_name='Jessica' AND last_name='Davidson'), 
 (SELECT id FROM users WHERE first_name='Chris' AND last_name='Baker'), NOW(), NOW());
 
 SELECT 
    users.first_name AS user_first_name, 
    users.last_name AS user_last_name,
    user2.first_name AS friend_first_name, 
    user2.last_name AS friend_last_name
FROM 
    friend_ship.users
LEFT JOIN 
    friend_ship.friendships ON users.id = friendships.user_id
LEFT JOIN 
    friend_ship.users AS user2 ON friendships.friend_id = user2.id;

