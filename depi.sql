CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(100) NOT NULL UNIQUE,
    email VARCHAR(150) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,  -- في التطبيق الحقيقي استخدم تشفير
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);



CREATE TABLE tasks (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    title VARCHAR(255) NOT NULL,
    description TEXT,
    is_completed BOOLEAN DEFAULT FALSE,
    due_date DATE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);



INSERT INTO users (username, email, password)
VALUES ('ahmed1234', 'ahmedd@example.com', '12345s6');


DESCRIBE tasks;
--

INSERT INTO tasks (user_id, title, description, due_date)
VALUES (1, 'مراجعة الدرس', 'مراجعة درس MySQL', '2025-08-22');


SELECT * FROM tasks



INSERT INTO tasks (user_id, title, description, due_date)
VALUES (1, 'Gym time', 'Going To gym', '2025-08-21');


UPDATE tasks
SET is_completed = TRUE
WHERE id = 1 AND user_id = 1;


SELECT * FROM tasks
WHERE user_id = 1
ORDER BY due_date;


UPDATE tasks
SET title = 'Swimming'
WHERE title = 'Gym time';


INSERT INTO tasks (user_id, title, description, due_date)
VALUES (1, '2 مراجعة الدرس', 'مراجعة درس sqlite', '2025-08-19');


SHOW TABLES


DESCRIBE users

SELECT * FROM tasks

