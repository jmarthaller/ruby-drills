class TicTacToe
    VALID_WINNING_MOVES = [
        [0, 1, 2], 
        [3, 4, 5], 
        [6, 7, 8], 
        [0, 3, 6], 
        [1, 4, 7], 
        [2, 5, 8], 
        [0, 4, 8],
        [2, 4, 6]  
    ]

    attr_reader :player_one_moves, :player_two_moves, :game_in_progress    
    
    def initialize(player_one_moves, player_two_moves, game_in_progress)
        @player_one_moves = player_one_moves
        @player_two_moves = player_two_moves
        @game_in_progress = game_in_progress
    end

    def play_game
        while @game_in_progress do 
            puts "PLAYER #{@player_one_moves}. PLEASE SELECT A MOVE."
            player_move = gets.chomp

            if valid_move?(player_move)
                place_figure(player_move)
                print_moves
            else
                puts "MOVE MUST BE A NUMBER FROM 1-9. PLEASE TRY AGAIN."
                # retry - wrong syntax
            end

            
        end
        puts "#{@player_one_moves} YOU HAVE WON!"
    end


    private 

    def place_figure(move)
    end

    def print_moves
    end

    def valid_move?(move)
        # no character already in this place
        # character is a number between 1-9
        return false unless move.to_i.between?(0, 8)
    end

end

new_game = TicTacToe.new([], [], true)
new_game.play_game
