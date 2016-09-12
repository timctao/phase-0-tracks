require_relative 'word_game'

describe Hangman do
	let(:game) { Hangman.new("test") }

	it "stores the input word on initialization" do
		expect(game.word).to eq ["t", "e", "s", "t"]
	end

	it "displays current guess count limit to length of inputted word" do
		expect(game.guess_count).to eq 4
	end

	it "stores letter guesses to the correct arrray" do
		expect(game.guess_letter("e")).to eq ["e"]		
	end

	it "displays correct guesses in a hint string" do 
		game.correct_letters = ["t"]
		expect(game.display_hint).to eq "t _ _ t"
	end

end