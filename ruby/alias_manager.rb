# Ask user to input first name and last name
# When name has been inputted, swap the first and last name
# For every vowel, convert that vowel to the next vowel in line
# For every consonant, convert that consonant to the next consonant in line
# Once all letters have been converted, dispay new alias for the inputted name

# This will swap the first name with the last name
def name_swap(first_name, last_name)
	code_name = []
	code_name.push(first_name, last_name)
	code_name.reverse!.join(' ')
end

# This method will convert any vowels in the name to the next vowel in line
def vowel_converter(swapped_name)
	# Forces all letters to be lower case in order for code to work properly
	code_name = swapped_name.downcase.chars
	vowels = %w{a e i o u}
	code_name.map! do |letter|
		# Edge case fix to make code work as intended
		if letter == "u"
			letter = "a"
		elsif vowels.include?(letter)
			vowels[vowels.index(letter) + 1]
		else
			letter
		end
	end
	# This re-capitalizes the first letter of each part of the name
	code_name.join('').split.map(&:capitalize).join(' ')
end

def consonant_converter(swapped_name)
	code_name = swapped_name.downcase.chars
	consonants = %w{b c d f g h j k l m n p q r s t v w x y z}
	code_name.map! do |letter|
		if letter == "z"
			letter = "b"
		elsif consonants.include?(letter)
			consonants[consonants.index(letter) + 1]
		else
			letter
		end
	end
	code_name.join('').split.map(&:capitalize).join(' ')
end

# p consonant_converter(vowel_converter(name_swap("Felicia", "Torres")))
# => Returns "Vussit Gimodoe"

