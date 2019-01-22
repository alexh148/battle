require 'player'

describe Player do
  subject { described_class.new('Seb')}

  describe '#name' do
    it 'should give the players name back' do
      expect(subject.name).to eq "Seb"
    end
  end

  describe '#hp' do
    it 'has a default hp of 100' do
      expect(subject.hp).to eq 100
    end
  end

  describe '#reduce' do
    it 'reduces the hp by 10' do
      subject.reduce
      expect(subject.hp).to eq 90
    end
  end
  
end
