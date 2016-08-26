def encrypt(input)
	index = 0 
	while index < input.length
		input[index] = input[index].next
		index += 1 
	end
	puts input
end

def decrypt(input)
index = 0
key = "abcdefhijklmnopqrstuvwxyz"
	while index < input.length
	  input[index] = key[key.index(input[index])-1]
	  index += 1
	end
	puts input
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

	encrypt(passcode)

	end

	if answer == "Decrypt"

	puts "Type in coded phrase"
	locked_phrase = gets.chomp

	decrypt(locked_phrase)

	end

