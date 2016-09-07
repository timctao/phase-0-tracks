class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(int)
  	int.times { puts "Woof!" }
  end

  def roll_over
  	p "*rolls over*"
  end

  def dog_years(int)
  	human_age = int * 7
  	p human_age
  end

  def play_dead
	puts "Say bang!"
	input = gets.chomp
	if input == "bang!"
		p "*plays dead*"
	else
		p "*Dog looks at you funny*"
	end
  end

end

puppy = Puppy.new.fetch("train")

bark = Puppy.new.speak(4)

trick = Puppy.new.roll_over

age = Puppy.new.dog_years(3)

new_trick = Puppy.new.play_dead
