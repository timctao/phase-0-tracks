require 'sqlite3'

# Create database for calorie counting
db = SQLite3::Database.new("calories.db")
db.results_as_hash = true

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

create_sweets_snacks_table = <<-SQL
	CREATE TABLE IF NOT EXISTS sweets_snacks (
		id INTEGER PRIMARY KEY,
		name VARCHAR(255),
		calories INT
	)
SQL

create_calorie_calculator = <<-SQL
	CREATE TABLE IF NOT EXISTS calorie_calculator (
		id INTEGER PRIMARY KEY,
		date VARCHAR(255),
		total_calories INT
	)
SQL

db.execute(create_meat_table)
db.execute(create_dairy_table)
db.execute(create_fruits_veggies_table)
db.execute(create_sweets_snacks_table)
db.execute(create_calorie_calculator)

# Methods for adding items to each information table
def meat_adder(db, name, calories)
	db.execute("INSERT INTO meats (name, calories) VALUES (?, ?)", [name, calories])
end

def dairy_adder(db, name, calories)
	db.execute("INSERT INTO dairy (name, calories) VALUES (?, ?)", [name, calories])
end

def sweets_snacks_adder(db, name, calories)
	db.execute("INSERT INTO sweets_snacks (name, calories) VALUES (?, ?)", [name, calories])
end

def fruits_veggies_adder(db, name, calories)
	db.execute("INSERT INTO fruits_veggies (name, calories) VALUES (?, ?)", [name, calories])
end

# meat_list = db.execute("SELECT * FROM meats")

# meat_list.each do |meat|
# 	puts "#{meat['id']}: #{meat['name']}, Calories: #{meat['calories']}"
# end