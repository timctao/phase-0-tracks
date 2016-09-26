require 'sqlite3'

# Create multiple databases for calorie counting
meat = SQLite3::Database.new("meats.db")
dairy_db = SQLite3::Database.new("dairy.db")
fruits_veggies_db = SQLite3::Database.new("fruits_veggies.db")
calorie_counter_db = SQLite3::Database.new("calorie_counter.db")
