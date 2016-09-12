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

	attr_reader :guess_count, :hint
	attr_accessor :word

	def initialize(word)
		@word = word.chars
		@hint = nil
		@guess_count = word.length
	end

	def convert_word
		@hint = @word.map { "_" }
	end

end

puts "Welcome to Hang Man! User 1, please input a word:"
word = gets.chomp
game = Hangman.new(word)
