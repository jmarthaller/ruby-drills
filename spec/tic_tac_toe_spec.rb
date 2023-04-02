
require 'tic_tac_toe'

RSpec.describe TicTacToe do 
    let(:new_game) { TicTacToe.new([],[], true) }

    it "initializes a new game of Tic-Tac-Toe with 2 empty arrays" do 

        expect(new_game).to be_kind_of(TicTacToe)
    end

    # it "identifies the length of the returned hash" do
    #     expect(substring_finder.substrings(entry_word, dictionary).count).to be(2)
    # end

    # it "counts the number of occurences" do 
    #     expect(substring_finder.substrings(entry_word, dictionary)["low"]).to eq(1)
    # end



end