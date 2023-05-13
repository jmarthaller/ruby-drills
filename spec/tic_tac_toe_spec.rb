
require 'tic_tac_toe'

RSpec.describe TicTacToe do 
    let(:new_game) { TicTacToe.new([],[], true) }

    it "initializes a new game of Tic-Tac-Toe with 2 empty arrays" do 

        expect(new_game).to be_kind_of(TicTacToe)
    end

    it 'initializes two sets of player moves with zero' do 
        expect(new_game.player_one_moves.count).to be(0);
        expect(new_game.player_two_moves.count).to be(0);
    end

    it 'initializes a game in progress' do
        expect(new_game.game_in_progress).to be(true)
    end


    # it "identifies the length of the returned hash" do
    #     expect(substring_finder.substrings(entry_word, dictionary).count).to be(2)
    # end

    # it "counts the number of occurences" do 
    #     expect(substring_finder.substrings(entry_word, dictionary)["low"]).to eq(1)
    # end

    # it "places a figure on the board" do
    #     new_game.place_figure(0)
    #     expect(new_game.player_one_moves.count).to be(1)
    # end

    it "announces the winner" do
        new_game.place_figure(0)
        new_game.place_figure(1)
        new_game.place_figure(2)
        expect(new_game.announce_winner).to eq("Player 1 wins!")
    end



end