require 'game'

describe Game do
  let(:player_1) { double(:player1, receive_damage: true) }
  let(:player_2) { double(:player2, receive_damage: true) }
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
      subject.attack(player_1)
    end
  end

  describe '#current_turn' do
    it 'is player 1 when started' do
      expect(subject.current_turn).to eq player_1
    end
  end

  describe '#switch_turn' do
    it 'should change the current turn to player 2' do
      subject.switch_turn
      expect(subject.current_turn).to eq player_2
    end
  end
end
