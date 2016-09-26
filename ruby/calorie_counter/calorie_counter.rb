require 'sqlite3'

# Create database for calorie counting
db = SQLite3::Database.new("calories.db")

# Creates info tables in calorie database
create_meat_table = <<-SQL
	CREATE TABLE IF NOT EXISTS meats (
		id INTEGER PRIMARY KEY,
		name VARCHAR(255),
		calories INT
	)
SQL

create_dairy_table = <<-SQL
	CREATE TABLE IF NOT EXISTS dairy (
		id INTEGER PRIMARY KEY,
		name VARCHAR(255),
		calories INT
	)
SQL

create_fruits_veggies_table = <<-SQL
	CREATE TABLE IF NOT EXISTS fruits_veggies (
		id INTEGER PRIMARY KEY,
		name VARCHAR(255),
		calories INT
	)
SQL

db.execute(create_meat_table)
db.execute(create_dairy_table)
db.execute(create_fruits_veggies_table)

# puts "Hello! This is a test. Add name of item"
# meat = gets.chomp

# puts "Servings?"
# amount = gets.to_i

# puts "Calories?"
# calories = gets.to_i

# def meat_adder(db, name, servings, calories)
# 	db.execute("INSERT INTO meats (name, servings, calories) VALUES (?, ?, ?)", [name, servings, calories])
# end

# meat_adder(db, "salmon", 1, 300)