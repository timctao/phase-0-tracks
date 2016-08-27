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

# Ask user to Encrypt or Decrypt a passcode
puts "Encrypt or Decrypt?"
answer = gets.chomp

# Make it so that they must type "Encrypt" or "Decrypt" to continue
	until answer == "Encrypt" || answer == "Decrypt"
		puts "Invalid answer, try again"
		answer = gets.chomp
	end

# Once choice is made, run the correct program
	if answer == "Encrypt"

	puts "Type in passcode"
	passcode = gets.chomp

# Print result as encrypted string
	p encrypt(passcode)

	end

	if answer == "Decrypt"

	puts "Type in coded phrase"
	locked_phrase = gets.chomp.downcase

# Print result as decrypted string
	p decrypt(locked_phrase)

	end