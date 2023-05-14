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

            if valid_move?(player_move)
                place_figure(player_move)
                print_moves
            else
                puts "MOVE MUST BE A NUMBER FROM 1-9, AND CANNOT "
                puts "ALREADY BE ON THE BOARD. PLEASE TRY AGAIN."
                # retry - wrong syntax
            end

            validate_winner
        end
    end

    def validate_winner
        # If player one moves or player two moves   
        # matches the VALID_WINNING_MOVES constant,
        # the game is over and announce the winner
        if player_one_moves.length >= 3 || player_two_moves.length >= 3
            VALID_WINNING_MOVES.each do |winning_move|
                if (winning_move - player_one_moves).empty?
                    puts "PLAYER ONE WINS!"
                    @game_in_progress = false
                elsif (winning_move - player_two_moves).empty?
                    puts "PLAYER TWO WINS!"
                    @game_in_progress = false
                end
            end
        end
    end
  
    def place_figure(move)
        if (player_one_moves + player_two_moves).length % 2 == 0
            @player_one_moves << move
        else
            @player_two_moves << move
        end
        put_circle_or_ex_on_board(move)
    end
    
    private 

    def print_moves
        # take stock of each player's moves
        # print to the board
        puts "HERE'S THE STATE OF THE BOARD: \n"
        puts "#{ @player_one_moves[0] ? " " : "X" }|#{@player_one_moves[0] ? " " : "X" }|#{@player_one_moves[0] ? " " : "X" }\n"
        puts "_+_+_"
        puts "#{@player_one_moves[0] ? " " : "X" }|#{@player_one_moves[0] ? " " : "X" }|#{@player_one_moves[0] ? " " : "X" }\n"
        puts "_+_+_"
        puts "#{@player_one_moves[0] ? " " : "X" }|#{@player_one_moves[0] ? " " : "X" }|#{@player_one_moves[0] ? " " : "X" }\n"
    end

    def valid_move?(move)
        return move.between?(0, 8) && !@player_one_moves.include?(move) && !@player_two_moves.include?(move)
    end

    def put_circle_or_ex_on_board(move)
        move_to_place = nil
        move_to_place = "X" if @player_one_moves.include?(move)
        move_to_place = "O" if @player_two_moves.include?(move)
        move_to_place
    end

end

new_game = TicTacToe.new([], [], true)
new_game.play_game
