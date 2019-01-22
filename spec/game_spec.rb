require 'game'

describe Game do
  let(:dave) { double(:player, receive_damage: true) }
  let(:bob) { double(:player, receive_damage: true) }

  describe '#attack' do

    it 'damages the player' do
      expect(dave).to receive(:receive_damage)
      subject.attack(bob, dave)
    end
  end

end
