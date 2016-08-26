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