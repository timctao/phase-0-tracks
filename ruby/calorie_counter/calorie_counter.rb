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

# Methods for adding or viewing items to/from each information table
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

def calorie_date(db, date)
	db.execute("INSERT INTO calorie_calculator (date, total_calories) VALUES (?, 0)", [date])
end

def view_date(db, date)
	db.execute("SELECT * FROM calorie_calculator WHERE date=?", [date])
end

# Driver Code
puts "Welcome to the Calorie Calculator-Tron 5000 (Name Pending). Please answer the following questions"
puts "What is today's date? (mm/dd/yy)"
input_date = gets.chomp

target_date = view_date(db, input_date)

if target_date == []
	calorie_date(db, input_date)
	target_date = view_date(db, input_date)
	puts "Adding new date to database..."	
end

# p target_date[0]['date']

# if todays_date =

# calorie_date(db, todays_date)
# date = db.execute("SELECT * FROM calorie_calculator")
# p date

# meat_list = db.execute("SELECT * FROM meats")

# meat_list.each do |meat|
# 	puts "#{meat['id']}: #{meat['name']}, Calories: #{meat['calories']}"
# end