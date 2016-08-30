def vampire_checker	

	puts "What is your name?"
	vampire_name = gets.chomp

		if vampire_name == "Alucard" || vampire_name == "Edward Cullen" || vampire_name == "Anne Rice" || vampire_name == "Dracula"
			vampire_name = true
		else
			vampire_name = false
		end
# => I realized after someone did a peer review that I did this question incorrectly, I thought the instructions was asking me to do either/or instead of both age and year
	puts "What year were you born?"

# => Begin/rescue/retry is a nice way to form a loop, and in this case to force an answer that is an Integer. Any input other than a whole number will result in a "try again"
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

		when vampire_age && (garlic_bread || health_plan || allergies)
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