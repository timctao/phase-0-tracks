class Santa

	attr_reader :age, :ethnicity
	attr_accessor :gender

	def initialize(gender, ethnicity)
		puts "Initializing Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", 
							 "Prancer", "Vixen", "Comet", 
							 "Cupid", "Donner", "Blitzen"]
		@age = 0
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}!"
	end

	def celebrate_birthday
		@age += 1
	end

	def get_mad_at(reindeer)
		@reindeer_ranking.delete_at(@reindeer_ranking.index(reindeer))
		@reindeer_ranking.insert(-1, reindeer)		
	end

	# Getter Methods
	# def age
	# 	@age
	# end

	# def ethnicity
	# 	@ethnicity
	# end

	# Setter Methods
	# def gender=(new_gender)
	# 	@gender = new_gender
	# end

end

# santa = Santa.new("male", "asian")

# santa
# => Returns <Santa:0x2f2df70 @gender="male", @ethnicity="asian", @reindeer_ranking=["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"], @age=0>
# santa.celebrate_birthday
# santa.get_mad_at("Rudolph")
# santa.gender = "female"
# santa
# => Returns <Santa:0x2f2df70 @gender="female", @ethnicity="asian", @reindeer_ranking=["Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen", "Rudolph"], @age=1>

example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A", "trigender"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A", "alien", "demigorgon"]

puts "How many santas would you like to register?"
number = gets.to_i
x = 1

number.times do
	until x == number + 1
		santa = Santa.new(example_genders.sample, example_ethnicities.sample)
		rand(140).times do
			santa.celebrate_birthday
		end 
			p "Santa registration ##{x}"
			p "Gender: #{santa.gender}"
			p "Ethnicity: #{santa.ethnicity}"
		    p "Age: #{santa.age}"
		    x += 1
	end
end