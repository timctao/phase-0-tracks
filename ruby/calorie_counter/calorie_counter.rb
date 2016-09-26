require 'sqlite3'

# Create database for calorie counting
db = SQLite3::Database.new("calories.db")

# Creates info tables in calorie database
create_meat_table = <<-SQL
	CREATE TABLE IF NOT EXISTS meats (
		id INTEGER PRIMARY KEY,
		name VARCHAR(255),
		servings INT,
		calories INT
	)
SQL

create_dairy_table = <<-SQL
	CREATE TABLE IF NOT EXISTS dairy (
		id INTEGER PRIMARY KEY,
		name VARCHAR(255),
		servings INT,
		calories INT
	)
SQL

create_fruits_veggies_table = <<-SQL
	CREATE TABLE IF NOT EXISTS fruits_veggies (
		id INTEGER PRIMARY KEY,
		name VARCHAR(255),
		servings INT,
		calories INT
	)
SQL

db.execute(create_meat_table)
db.execute(create_dairy_table)
db.execute(create_fruits_veggies_table)