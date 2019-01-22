require 'player'

describe Player do

  describe '#name' do
    subject { described_class.new('Seb')}

    it 'should give the players name back' do
      expect(subject.name).to eq "Seb"
    end
  end
end
