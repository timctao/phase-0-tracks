def name_swap(first_name, last_name)
	code_name = []
	code_name.push(first_name, last_name)
	code_name.reverse!.join(' ')
end

def vowel_converter(swapped_name)
	code_name = swapped_name.downcase.chars
	vowels = %w{a e i o u}
	code_name.map! do |letter|
		if letter == "u"
			letter = "a"
		elsif vowels.include?(letter)
			vowels[vowels.index(letter) + 1]
		else
			letter
		end
	end
	code_name.join('')
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
	code_name.join('')
end

p consonant_converter(vowel_converter(name_swap("Felicia", "Torres")))