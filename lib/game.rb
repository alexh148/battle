require 'player'

class Game

  def attack(attacker, attackee)
    attackee.receive_damage
  end
end
