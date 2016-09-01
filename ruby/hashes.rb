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

puts "How many years have you been in design?"
designer[:experience] = gets.to_i

puts "What theme would you like the decorations to be?"
designer[:theme] = gets.chomp

p designer

puts "Would you like to change any of your answers? Type 'none' if no change"
change_input = gets.chomp

	if change_input == "none"
		change_input = nil
	else
		change_input = change_input.intern

		puts "What is your updated answer?"
		designer[change_input] = gets.chomp

	end

p designer