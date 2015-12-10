require 'game'

describe Game do
  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double :player}
  let(:player_2) { double :player }

  it 'returns the names of players participating' do
    expect(game.players).to eq [player_1, player_2]
  end

  it 'can return participating player 1' do
    expect(game.player_1).to eq player_1
  end

  it 'can return participating player 2' do
    expect(game.player_2).to eq player_2
  end

  describe '#attack' do
    it 'damages the opponent\'s HP' do
      expect(player_2).to receive(:receive_damage)
      game.attack(player_2)
    end
  end
end
