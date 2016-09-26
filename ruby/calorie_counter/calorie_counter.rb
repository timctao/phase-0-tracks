# I know that this code is definitely NOT DRY, but I worked a long time and I think it works (I tested most everything)
# I would like to come back to this to modify the code but I'm a bit tired and I ran out of time. Hope it works for you!

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

def add_date(db, date)
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
	add_date(db, input_date)
	target_date = view_date(db, input_date)
	puts "Adding new date to database..."	
end

puts "Date selected: #{target_date[0]['date']}, Total Calories: #{target_date[0]['total_calories']}"

puts "What type of food would you like to add to the calorie total?"
puts "(dairy, meats, fruits, vegetables, snacks, sweets, condiments) or type 'none'"
type = gets.chomp

if type == "meats"
	view_list = db.execute("SELECT * FROM meats")
	view_list.each do |item|
		puts "#{item['id']}: #{item['name']}, #{item['calories']} calories per serving"
	end
	puts "-------------------------"
	puts "Is the item you are looking for in the list above? (y/n)"
	input = gets.chomp
	if input == "y"
		puts "What is the calorie content of the item you selected?"
		calories = gets.to_f
		puts "How many servings do you want to add?"
		servings = gets.to_f
		total_calories = servings * calories
		final_calories = target_date[0]['total_calories'] + total_calories
		add_calories = db.execute("UPDATE calorie_calculator SET total_calories=? WHERE date=?", [final_calories, input_date])
	end
	if input == "n"
		puts "Please type in name of food you would like to add to the list:"
		item = gets.chomp
		puts "How many calories per serving?"
		calories = gets.to_f
		meat_adder(db, item, calories)
		puts "How many servings do you want to add?"
		servings = gets.to_f
		total_calories = servings * calories
		final_calories = target_date[0]['total_calories'] + total_calories
		add_calories = db.execute("UPDATE calorie_calculator SET total_calories=? WHERE date=?", [final_calories, input_date])
	end
	puts "For #{target_date[0]['date']}, #{total_calories} was added to create a total of #{final_calories}"
end

if type == "dairy"
	view_list = db.execute("SELECT * FROM dairy")
	view_list.each do |item|
		puts "#{item['id']}: #{item['name']}, #{item['calories']} calories per serving"
	end
	puts "-------------------------"
	puts "Is the item you are looking for in the list above? (y/n)"
	input = gets.chomp
	if input == "y"
		puts "What is the calorie content of the item you selected?"
		calories = gets.to_f
		puts "How many servings do you want to add?"
		servings = gets.to_f
		total_calories = servings * calories
		final_calories = target_date[0]['total_calories'] + total_calories
		add_calories = db.execute("UPDATE calorie_calculator SET total_calories=? WHERE date=?", [final_calories, input_date])
	end
	if input == "n"
		puts "Please type in name of food you would like to add to the list:"
		item = gets.chomp
		puts "How many calories per serving?"
		calories = gets.to_f
		dairy_adder(db, item, calories)
		puts "How many servings do you want to add?"
		servings = gets.to_f
		total_calories = servings * calories
		final_calories = target_date[0]['total_calories'] + total_calories
		add_calories = db.execute("UPDATE calorie_calculator SET total_calories=? WHERE date=?", [final_calories, input_date])
	end
	puts "For #{target_date[0]['date']}, #{total_calories} was added to create a total of #{final_calories}"
end

if type == "fruits" || type == "vegetables"
	view_list = db.execute("SELECT * FROM fruits_veggies")
	view_list.each do |item|
		puts "#{item['id']}: #{item['name']}, #{item['calories']} calories per serving"
	end
	puts "-------------------------"
	puts "Is the item you are looking for in the list above? (y/n)"
	input = gets.chomp
	if input == "y"
		puts "What is the calorie content of the item you selected?"
		calories = gets.to_f
		puts "How many servings do you want to add?"
		servings = gets.to_f
		total_calories = servings * calories
		final_calories = target_date[0]['total_calories'] + total_calories
		add_calories = db.execute("UPDATE calorie_calculator SET total_calories=? WHERE date=?", [final_calories, input_date])
	end
	if input == "n"
		puts "Please type in name of food you would like to add to the list:"
		item = gets.chomp
		puts "How many calories per serving?"
		calories = gets.to_f
		fruits_veggies_adder(db, item, calories)
		puts "How many servings do you want to add?"
		servings = gets.to_f
		total_calories = servings * calories
		final_calories = target_date[0]['total_calories'] + total_calories
		add_calories = db.execute("UPDATE calorie_calculator SET total_calories=? WHERE date=?", [final_calories, input_date])
	end
	puts "For #{target_date[0]['date']}, #{total_calories} was added to create a total of #{final_calories}"
end

if type == "sweets" || type == "snacks" || type == "condiments"
	view_list = db.execute("SELECT * FROM sweets_snacks")
	view_list.each do |item|
		puts "#{item['id']}: #{item['name']}, #{item['calories']} calories per serving"
	end
	puts "-------------------------"
	puts "Is the item you are looking for in the list above? (y/n)"
	input = gets.chomp
	if input == "y"
		puts "What is the calorie content of the item you selected?"
		calories = gets.to_f
		puts "How many servings do you want to add?"
		servings = gets.to_f
		total_calories = servings * calories
		final_calories = target_date[0]['total_calories'] + total_calories
		add_calories = db.execute("UPDATE calorie_calculator SET total_calories=? WHERE date=?", [final_calories, input_date])
	end
	if input == "n"
		puts "Please type in name of food you would like to add to the list:"
		item = gets.chomp
		puts "How many calories per serving?"
		calories = gets.to_f
		sweets_snacks_adder(db, item, calories)
		puts "How many servings do you want to add?"
		servings = gets.to_f
		total_calories = servings * calories
		final_calories = target_date[0]['total_calories'] + total_calories
		add_calories = db.execute("UPDATE calorie_calculator SET total_calories=? WHERE date=?", [final_calories, input_date])
	end
	puts "For #{target_date[0]['date']}, #{total_calories} was added to create a total of #{final_calories}"
end

# p target_date[0]['date']

# if todays_date =

# calorie_date(db, todays_date)
# date = db.execute("SELECT * FROM calorie_calculator")
# p date

# meat_list = db.execute("SELECT * FROM meats")

# p meat_list

# meat_list.each do |meat|
# 	puts "#{meat['id']}: #{meat['name']}, Calories: #{meat['calories']}"
# end