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
    it 'damages the player' do
      expect(charizard).to receive(:receive_damage)
      pikachu.attack(charizard)
    end
  end

  describe '#attack' do
    it 'reduces player HP' do
      expect { pikachu.attack(charizard) }.to change { charizard.hp }.by -Player::MIN_DAMAGE
    end
  end
end
