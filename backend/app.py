from flask import Flask, request, jsonify
import mysql.connector

app = Flask(_name_)

# Database Connection
db = mysql.connector.connect(
    host="localhost",
    user="root",
    password="password",
    database="fitness_tracker"
)

cursor = db.cursor()

@app.route('/register', methods=['POST'])
def register_user():
    data = request.json
    query = "INSERT INTO Users (name, email, password, age, gender, height, weight) VALUES (%s, %s, %s, %s, %s, %s, %s)"
    values = (data['name'], data['email'], data['password'], data['age'], data['gender'], data['height'], data['weight'])
    cursor.execute(query, values)
    db.commit()
    return jsonify({"message": "User registered successfully!"})

@app.route('/workouts/<user_id>', methods=['GET'])
def get_workouts(user_id):
    cursor.execute("SELECT * FROM Workout WHERE user_id = %s", (user_id,))
    workouts = cursor.fetchall()
    return jsonify(workouts)

if _name_ == '_main_':
    app.run(debug=True)
