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
  	
  end

end

puppy = Puppy.new.fetch("train")

bark = Puppy.new.speak(4)

trick = Puppy.new.roll_over
