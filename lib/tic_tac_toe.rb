class TicTacToe
    VALID_WINNING_MOVES = [
        []
    ]


    attr_reader :player_one_moves, :player_two_moves, :game_in_progress
    
    
    def initialize(@player_one_moves, @player_two_moves, @game_in_progress)
        @player_one_moves = player_one_moves
        @player_two_moves = player_two_moves
        @game_in_progress = game_in_progress
    end

    def play_game
        while @game_in_progress


        end
    end



    private 

    def place_figure(move)
    end

    def print_moves
    end

    def valid_move?(move)
    end

end