puts "What is your name?"
vampire_name = gets.chomp

	if vampire_name == "Alucard" || vampire_name == "Edward Cullen" || vampire_name == "Anne Rice"
		vampire_name = true
	else
		vampire_name = false
	end

puts "What year were you born?"

	begin
		vampire_age = Integer(gets.chomp)
	rescue
		puts "Please enter a valid year"
		retry
	end

	if vampire_age <= 1916 || vampire_age >=2016
		vampire_age = true
	else
		vampire_age = false
	end
	
puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
garlic_bread = gets.chomp

	until garlic_bread == "y" || garlic_bread == "n"
		puts "Please enter valid response (y/n)"
		garlic_bread = gets.chomp	
	end

	if garlic_bread == "n"
		garlic_bread = true
	else
		garlic_bread = false
	end

puts "Would you like to enroll in the company's health plan? (y/n)"
health_plan = gets.chomp

	until health_plan == "y" || health_plan == "n"
		puts "Please enter valid response (y/n)"
		health_plan = gets.chomp
	end

	if health_plan == "n"
		health_plan = true
	else
		health_plan = false
	end