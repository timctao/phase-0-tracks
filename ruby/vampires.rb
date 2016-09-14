def vampire_checker	

	puts "What is your name?"
	vampire_name = gets.chomp

		if vampire_name == "Drak Cula" || vampire_name == "Tu Fang"
			vampire_name = true
		else
			vampire_name = false
		end

	puts "How old are you?"

		begin
			vampire_age = Integer(gets.chomp)
		rescue
			puts "Please enter a valid age"
			retry
		end

	puts "What year were you born?"

		begin
			birth_year = Integer(gets.chomp)
		rescue
			puts "Please enter a valid year"
			retry
		end

		current_year = 2016

		if current_year - birth_year != vampire_age
			vampire_age = true
		else
			vampire_age = false
		end
		
	puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
	garlic_bread = gets.chomp

# => Loop is to force the user into providing an actual "yes" or "no"
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

	puts "Do you have any allergies? (Type 'done' when complete)"
	allergies = gets.chomp

		until allergies == "done" || allergies == "sunshine"
			allergies = gets.chomp
		end

		if allergies == "sunshine"
			allergies = true
		else
			allergies = false
		end

# => Used case instead of if/elsif/else to make code easier to read and show exactly what the output is.
	case
		when vampire_name
			puts "Definitely a vampire."

		when vampire_age && garlic_bread && health_plan
			puts "Almost definitely a vampire."

		when allergies
			puts "Probably a vampire."

		when vampire_age && (garlic_bread || health_plan)
			puts "Probably a vampire."

		when !vampire_age && !garlic_bread && !health_plan
			puts "Probably not a vampire."

		else
			puts "Results inconclusive."
	end

end

puts "How many employees are you registering for?"

# => This begin/rescue/retry is specifically to prevent any non-integer input so as to not create an infinite loop of the vampire_checker program
	begin
		num_employees = Integer(gets.chomp)
	rescue
		puts "Please enter valid number"
		retry
	end

# => .times method allows integer input to run a code (in this case, the vampire_checker) "x" amount of times, where "x" is the integer
num_employees.times do
	vampire_checker	
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."