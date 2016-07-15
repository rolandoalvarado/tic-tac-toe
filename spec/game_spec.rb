require 'spec_helper'

module TicTacToe
  describe Game do
 
    let (:blake) { Player.new({color: "X", name: "blake"}) }
    let (:roland) { Player.new({color: "Y", name: "roland"}) }
 
    context "#initialize" do
      it "randomly selects a current_player" do
        allow_any_instance_of(Array).to receive(:shuffle) { [roland, blake] }
        game = Game.new([blake, roland])
        expect(game.current_player).to eq roland
      end

      it "randomly selects an other player" do
        allow_any_instance_of(Array).to receive(:shuffle) { [roland, blake] }
        game = Game.new([blake, roland])
        expect(game.other_player).to eq blake
      end
    end

    context "#switch_players" do
      it "will set @current_player to @other_player" do
        game = Game.new([blake, roland])
        other_player = game.other_player
        game.switch_players
        expect(game.current_player).to eq other_player
      end

      it "will set @other_player to @current_player" do
        game = Game.new([blake, roland])
        current_player = game.current_player
        game.switch_players
        expect(game.other_player).to eq current_player
      end
    end

    context "#get_move" do
      it "converts human_move of '1' to [0, 0]" do
        game = Game.new([blake, roland])
        expect(game.get_move("1")).to eq [0, 0]
      end

      it "converts human_move of '1' to [0, 0]" do
        game = Game.new([blake, roland])
        expect(game.get_move("7")).to eq [2, 1]
      end
    end

    context "#game_over_message" do
      it "returns '{current player name} won!' if board shows a winner" do
        game = Game.new([blake, roland])
        allow(game).to receive(:current_player) { blake }
        allow(game.board).to receive(:game_over) { :winner }
        expect(game.game_over_message).to eq "blake is the winner!"
      end

      it "returns 'The game ended in a tie' if board shows a draw" do
        game = Game.new([blake, roland])
        allow(game).to receive(:current_player) { blake }
        allow(game.board).to receive(:game_over) { :draw }
        expect(game.game_over_message).to eq "The game ended in a tie"
      end
    end

  end
end
