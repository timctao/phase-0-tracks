# Create a word game that starts with user 1 inputting any word.
# Display to user 2 blank spaces using underscores the length of the word
# Display to user 2 the number of guesses remaining, number of guesses should equal the length of the word
# Let user 2 guess the word by typing any letter of the alphabet.
# If the letter guessed is in the word, replace the blank letter with the guessed letter. Guess count goes down by 1
# If the letter is not in the word, then answer with "Try another letter". Guess count goes down by 1
# If the letter guessed is a repeat, answer with "You already guessed that letter, try another". Guess count remains the same
# If user 2 manages to complete the word before guess counter reaches 0, display congratulations message
# If user 2 does not manage to complete the word before guess counter reaches 0, display taunting message

class Hangman

	attr_accessor :word, :correct_letters, :all_guesses, :guess_count, :hint, :win, :lose

	def initialize(word)
		@word = word.chars
		@hint = ''
		@guess_count = word.length
		@correct_letters = []
		@all_guesses = []
		@win = false
		@lose = false
	end

	def guess_letter(letter)
		if @word.include?(letter)
			@correct_letters.push(letter)
			@all_guesses.push(letter)
		else
			@all_guesses.push(letter)
		end
	end

	def repeat_letter(letter)
		if @all_guesses.include?(letter)
			@guess_count += 1
			p "That letter has been used, please try another:"
		end
	end

	def display_hint
		@hint = ''
		@word.each do |letter|
			if @correct_letters.include?(letter)
				@hint += "#{letter} "
			else
				@hint += "_ "
			end
		end
		@hint.rstrip!
	end

	def winner
		@win = true
	end

	def loser
		@lose = true
	end

end

puts "Welcome to Hang Man! User 1, please input a word:"
word = gets.chomp
game = Hangman.new(word)

while game.win != true && game.lose != true
	puts "User 2, you have #{game.guess_count} guesses. Please input a letter:"
	puts game.display_hint
	letter = gets.chomp
	game.repeat_letter(letter)
	game.guess_letter(letter)
	game.guess_count -= 1

	if game.hint.split.join == word
		p "Congratulations! You are the winner! The word was #{word}!"
		game.win
		break
	end
	if game.guess_count == 0
		p "You are a loser!"
		game.lose
		break
	end

end
