-- Sample Users
INSERT INTO Users (name, email, password, age, gender, height, weight)
VALUES 
('John Doe', 'john.doe@example.com', 'password123', 30, 'Male', 180, 75),
('Jane Smith', 'jane.smith@example.com', 'password123', 28, 'Female', 165, 60);

-- Sample Workouts
INSERT INTO Workout (user_id, workout_date, exercise_name, duration, calories_burned)
VALUES
(1, '2025-01-01', 'Running', 30, 300),
(2, '2025-01-01', 'Cycling', 45, 400);

-- Sample Diet
INSERT INTO Diet (user_id, date, meal, food_item, calories_consumed)
VALUES
(1, '2025-01-01', 'Breakfast', 'Oats', 150),
(2, '2025-01-01', 'Lunch', 'Chicken Salad', 350);

-- Sample Progress
INSERT INTO Progress (user_id, date, current_weight, BMI)
VALUES
(1, '2025-01-01', 75, 23.15),
(2, '2025-01-01', 60, 22.04);
