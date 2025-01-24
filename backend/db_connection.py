import mysql.connector

def get_db_connection():
    db = mysql.connector.connect(
        host="localhost",
        user="root",
        password="password",
        database="fitness_tracker"
    )
    cursor = db.cursor(dictionary=True)
    return db, cursor
