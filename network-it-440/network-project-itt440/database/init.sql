-- Inside init.sql or via connection:
SET GLOBAL time_zone = '+08:00';
SET time_zone = '+08:00';

-- database/init.sql
CREATE DATABASE IF NOT EXISTS project_db;
USE project_db;

CREATE TABLE IF NOT EXISTS users (
    user VARCHAR(50) PRIMARY KEY,
    points INT NOT NULL DEFAULT 0,
    datetime_stamp DATETIME NOT NULL
);

-- Insert initial records for the C and Python servers to update
INSERT INTO users (user, points, datetime_stamp) VALUES ('c_user', 0, NOW()) ON DUPLICATE KEY UPDATE user=user;
INSERT INTO users (user, points, datetime_stamp) VALUES ('python_user', 0, NOW()) ON DUPLICATE KEY UPDATE user=user;
INSERT INTO users (user, points, datetime_stamp) VALUES ('python_user_2', 0, NOW()) ON DUPLICATE KEY UPDATE user=user;