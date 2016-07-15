module TicTacToe
  class Game
    attr_reader :players, :board, :current_player, :other_player
    def initialize(players, board = Board.new)
      @players = players
      @board = board
      @current_player, @other_player = players.shuffle
    end

    def switch_players
      @current_player, @other_player = @other_player, @current_player
    end

    def solicit_move
      "#{current_player.name}: Enter a number between 1 and 16 to make your move"
    end

    def get_move(human_move = gets.chomp)
      human_move_to_coordinate(human_move)
    end

    def game_over_message
      return "#{current_player.name} is the winner!" if board.game_over == :winner
      return "The game ended in a tie" if board.game_over == :draw
    end

    def play
      puts "#{current_player.name} has randomly been selected as the first player"

      begin
        while true
          board.formatted_grid
          puts ""
          puts solicit_move
          x, y = get_move
          board.set_cell(x, y, current_player.color)

          if board.game_over
            puts game_over_message
            board.formatted_grid
            return
          else
            switch_players
          end
        end
      rescue
      	puts "Entered number is not in range. Program terminated!"
      end
    end

    private

    def human_move_to_coordinate(human_move)
      mapping = {
        "1" => [0, 0],
        "2" => [1, 0],
        "3" => [2, 0],
        "4" => [3, 0],
        "5" => [0, 1],
        "6" => [1, 1],
        "7" => [2, 1],
        "8" => [3, 1],
        "9" => [0, 2],
        "10" => [1, 2],
        "11" => [2, 2],
        "12" => [3, 2],
        "13" => [0, 3],
        "14" => [1, 3],
        "15" => [2, 3],
        "16" => [3, 3]
      }
      mapping[human_move]
    end

  end
end
