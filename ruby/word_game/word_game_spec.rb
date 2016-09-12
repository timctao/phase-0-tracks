require_relative 'word_game'

describe Hangman do
	let(:game) { Hangman.new("test") }

	it "stores the input word on initialization" do
		expect(game.word).to eq ["t", "e", "s", "t"]
	end

	# it "replaces the input word with blank underscores" do
	# 	expect(game.convert_word).to eq ["_", "_", "_", "_"]
	# end

	it "displays current guess count" do
		expect(game.guess_count).to eq 4
	end

	# it "displays the guessed letter in the hint array" do 
	# 	expect(game.guess_letter("t")).to eq "t _ _ t"
	# end	

	it "stores letter guesses to the correct arrray" do
		expect(game.guess_letter("e")).to eq ["e"]		
	end

end