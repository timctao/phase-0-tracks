require_relative 'word_game'

describe Hangman do
	let(:game) { Hangman.new("test") }

	it "stores the input word on initialization" do
		expect(game.get_word).to eq "test"
	end

end

