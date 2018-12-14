require 'player'

describe Player do
  subject(:pikachu) { described_class.new('Pikachu') }
  subject(:charizard) { described_class.new('Charizard') }

  describe '#name' do
    it 'returns player name' do
      expect(pikachu.name).to eq 'Pikachu'
    end
  end

  describe '#hp' do
    it 'returns player hit points' do
      expect(pikachu.hp).to eq described_class::MAX_HP
    end
  end

  describe '#receive_damage' do
    it 'reduces player HP' do
      damage = -described_class::MIN_DAMAGE
      expect { charizard.receive_damage }.to change { charizard.hp }.by damage
    end
  end
end
