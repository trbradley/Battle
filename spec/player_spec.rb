require 'player'

describe Player do
  subject(:player) { described_class.new('Johnny Cash') }
  it 'returns player\'s name' do
    expect(player.name).to eq 'Johnny Cash'
  end
end
