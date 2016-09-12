# module Shout

# 	def self.yell_angrily(words)
#     	words + "!!!" + " :("
# 	end

# 	def self.yelling_happily(words)
# 		words + "!!!" + " :)"
# 	end

# end

# p Shout.yell_angrily("I'm tired")

# p Shout.yelling_happily("Hello")

module Shout

	def selfish_yell(noun)
		puts "It's my #{noun} and I want it now!!!"
	end

end

class Adult
	include Shout
end

class Child
	include Shout
end

adult = Adult.new
adult.selfish_yell("money")

child = Child.new
child.selfish_yell("toy")
