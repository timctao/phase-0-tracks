# Ask user for some basic information, such as name, experience, and date of birth
# Store all user input information into a hash
# Once all information has been entered, print current hash state
# If user wants to change anything, allow them to input which key to change until "none" is typed

designer = {}

puts "Hello! Thank you for applying. Please answer the following questions:"

puts "What is your name?"
designer[:name] = gets.chomp

puts "What is your DOB?"
designer[:DOB] = gets.chomp