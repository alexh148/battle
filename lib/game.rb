require_relative 'player'

class Game

  attr_reader :player_1, :player_2
  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @players = [player_1, player_2]
  end

  def attack(target)
    target.receive_damage
  end

  def switch_turn
    @players.reverse!
  end

  def current_turn
    @players.first
  end
end
