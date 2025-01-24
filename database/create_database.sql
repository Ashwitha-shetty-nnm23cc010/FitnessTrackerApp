CREATE DATABASE fitness_tracker;

USE fitness_tracker;

-- Users Table
CREATE TABLE Users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(50) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    age INT,
    gender ENUM('Male', 'Female', 'Other'),
    height DECIMAL(5,2),
    weight DECIMAL(5,2)
);

-- Workout Table
CREATE TABLE Workout (
    workout_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    workout_date DATE,
    exercise_name VARCHAR(100),
    duration INT,
    calories_burned DECIMAL(5,2),
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

-- Diet Table
CREATE TABLE Diet (
    diet_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    date DATE,
    meal ENUM('Breakfast', 'Lunch', 'Dinner'),
    food_item VARCHAR(100),
    calories_consumed DECIMAL(5,2),
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

-- Progress Table
CREATE TABLE Progress (
    progress_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    date DATE,
    current_weight DECIMAL(5,2),
    BMI DECIMAL(5,2),
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);
