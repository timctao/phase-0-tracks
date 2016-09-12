require_relative 'word_game'

describe Hangman do
	let(:game) { Hangman.new("test") }

	it "stores the input word on initialization" do
		expect(game.word).to eq "test"
	end

	it "replaces the input word with blank underscores" do
		expect(game.word_blank).to eq "_ _ _ _"
	end

	it "displays current guess count" do
		expect(game.guess_count).to eq 4
	end

end