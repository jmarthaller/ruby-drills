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
            puts "PLAYER #{(player_one_moves + player_two_moves).length % 2 == 0 ? "ONE" : "TWO" }, PLEASE SELECT A MOVE."
            player_move = gets.chomp.to_i
            puts player_move.class
            if valid_move?(player_move)
                place_figure(player_move)
                print_moves
            else
                puts "MOVE MUST BE A NUMBER FROM 1-9. PLEASE TRY AGAIN."
                # retry - wrong syntax
            end

            # If player one moves or player two moves 
            # matches the VALID_WINNING_MOVES constant,
            # the game is over and announce the winner
        end
        puts "#{@player_one_moves} YOU HAVE WON!"
    end


    private 

    def place_figure(move)
        if (player_one_moves + player_two_moves).length % 2 == 0
            @player_one_moves.push(move)
        else
            @player_two_moves.push(move)
        end
    end

    def print_moves
        # take stock of each player's moves
        puts "HERE'S THE STATE OF THE BOARD: \n"
        puts "#{ @player_one_moves[0] ? "X" : " " }|#{@player_one_moves[0] ? " " : "X" }|#{@player_one_moves[0] ? " " : "X" }\n"
        puts "_+_+_"
        puts "#{@player_one_moves[0] ? " " : "X" }|#{@player_one_moves[0] ? " " : "X" }|#{@player_one_moves[0] ? " " : "X" }\n"
        puts "_+_+_"
        puts "#{@player_one_moves[0] ? " " : "X" }|#{@player_one_moves[0] ? " " : "X" }|#{@player_one_moves[0] ? " " : "X" }\n"
    end

    def valid_move?(move)
        # no character already in this place
        # character is a number between 1-9
        # require 'pry'; binding.pry
        return move.between?(0, 8)
        #     return true
        # return false unless move.between?(0, 8)
    end

    def circle_or_ex?
        # check if relevant spot
    end

end

new_game = TicTacToe.new([], [], true)
new_game.play_game
