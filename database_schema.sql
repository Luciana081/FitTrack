-- Database Schema for FitTrack

CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    password_hash VARCHAR(255) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE fitness_goals (
    id SERIAL PRIMARY KEY,
    user_id INT NOT NULL,
    goal_type VARCHAR(50) NOT NULL,
    target_value FLOAT NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE workouts (
    id SERIAL PRIMARY KEY,
    user_id INT NOT NULL,
    workout_type VARCHAR(50) NOT NULL,
    duration INT NOT NULL, -- Duration in minutes
    calories_burned INT NOT NULL,
    workout_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE nutrition (
    id SERIAL PRIMARY KEY,
    user_id INT NOT NULL,
    meal_type VARCHAR(50) NOT NULL,
    calories INT NOT NULL,
    protein FLOAT NOT NULL,
    carbohydrates FLOAT NOT NULL,
    fats FLOAT NOT NULL,
    meal_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id)
);