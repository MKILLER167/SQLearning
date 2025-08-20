import mysql.connector

# Connect to MySQL inside the container
conn = mysql.connector.connect(
    host="127.0.0.1",     # since you exposed port 3306
    port=3306,
    user="my_user",
    password="my_password",
    database="my_database"
)

cursor = conn.cursor()

# Example: Create a table
cursor.execute("""
CREATE TABLE IF NOT EXISTS tasks (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100)
);
""")

# Insert a record
cursor.execute("INSERT INTO tasks (title) VALUES (%s)", ("Gym time",))
conn.commit()

# Update a record
cursor.execute("UPDATE tasks SET title = %s WHERE title = %s", ("Swimming", "Gym time"))
conn.commit()

# Fetch all records
cursor.execute("SELECT * FROM tasks")
rows = cursor.fetcha
