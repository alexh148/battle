require 'player'

describe Player do
  let(:dave) { described_class.new('dave')}
  let(:bob) { described_class.new('bob')}

  describe '#name' do
    it 'should give the players name back' do
      expect(bob.name).to eq "bob"
    end
  end

  describe '#hp' do
    it 'has a default hp of 100' do
      expect(dave.hp).to eq 100
    end
  end

  describe '#receive_damage' do

    it 'should recieve 10 damage' do
      expect{ dave.receive_damage }.to change {dave.hp }.by(-10)
    end

  end

end
