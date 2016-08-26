def encrypt(input)
	index = 0 
	while index < input.length
		if input[index] == "z"
			input[index] = "a"
		elsif input[index] == " "
			input[index] = " "
		else
			input[index] = input[index].next
		end
		index += 1 
	end
	input
end

def decrypt(input)
index = 0
alphabet = "abcdefghijklmnopqrstuvwxyz"
	while index < input.length
		if input[index] == "z"
			input[index] = "a"
		elsif input[index] == " "
			input[index] = " "
		else
			input[index] = alphabet[alphabet.index(input[index]) - 1]
		end
		index += 1
	end
	input
end

puts "Encrypt or Decrypt?"
answer = gets.chomp

	until answer == "Encrypt" || answer == "Decrypt"
		puts "Invalid answer, try again"
		answer = gets.chomp
	end

	if answer == "Encrypt"

	puts "Type in passcode"
	passcode = gets.chomp

	p encrypt(passcode)

	end

	if answer == "Decrypt"

	puts "Type in coded phrase"
	locked_phrase = gets.chomp.downcase

	p decrypt(locked_phrase)

	end