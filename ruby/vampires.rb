puts "What is your name?"
vampire_name = gets.chomp

puts "What year were you born?"

	begin
		vampire_age = Integer(gets.chomp)
	rescue
		puts "Please enter a valid year"
		retry
	end
	
puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
garlic_bread = gets.chomp

puts "Would you like to enroll in the company's health plan? (y/n)"
health_plan = gets.chomp