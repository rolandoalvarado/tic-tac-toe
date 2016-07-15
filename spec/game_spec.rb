require 'spec_helper'

module TicTacToe
  describe Game do
 
    let (:blake) { Player.new({color: "X", name: "blake"}) }
    let (:roland) { Player.new({color: "Y", name: "roland"}) }
 
    context "#initialize" do
      it "randomly selects a current_player" do
        Array.any_instance.stub(:shuffle) { [roland, blake] }
        game = Game.new([blake, roland])
        expect(game.current_player).to eq roland
      end
 
      it "randomly selects an other player" do
        Array.any_instance.stub(:shuffle) { [roland, blake] }
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

  end
end
