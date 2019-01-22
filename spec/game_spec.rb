require 'game'

describe Game do
  let(:player_1) { double(:player, receive_damage: true) }
  let(:player_2) { double(:player, receive_damage: true) }
  subject { described_class.new(player_1, player_2) }

  describe '#defaults' do
    it 'returns the player 1 object when called' do
      expect(subject.player_1).to eq player_1
    end
    it 'returns the player 2 object when called' do
      expect(subject.player_2).to eq player_2
    end
  end

  describe '#attack' do

    it 'damages the player' do
      expect(player_1).to receive(:receive_damage)
      subject.attack(player_2, player_1)
    end
  end

end
