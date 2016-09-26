require 'sqlite3'

# Create database for calorie counting
db = SQLite3::Database.new("calories.db")

# Creates tables for each 