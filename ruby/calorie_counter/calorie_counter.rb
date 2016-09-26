require 'sqlite3'

# Create database for calorie counting
db = SQLite3::Database.new("calorie_counter.db")

# Creates tables for each 