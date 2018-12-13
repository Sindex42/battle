require 'player'

describe Player do
  subject(:pikachu) { described_class.new('Pikachu') }

  it 'returns player 1 name' do
    expect(pikachu.name).to eq 'Pikachu'
  end
end
