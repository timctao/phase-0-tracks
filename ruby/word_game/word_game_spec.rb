require_relative 'word_game'

describe Hangman do
	let(:game) { Hangman.new("test") }

	it "stores the input word on initialization" do
		expect(game.get_word).to eq "test"
	end

	it "replaces the input word with blank underscores" do
		expect(game.word_blank).to eq "_ _ _ _"
	end

end