require 'game'

describe Game do
  subject(:game) { described_class.new('Johnny Cash','Bruce Springsteen') }
  let(:player1) { double :player }
  let(:player2) { double :player }

  describe '#attack' do
    it 'damages the player' do
      expect(player2).to receive(:receive_damage)
      game.attack(player2)
    end
  end

  describe '#player_1' do
    it 'returns the first player' do
      expect(game.player_1).to eq 'Johnny Cash'
    end
  end

  describe '#player_1' do
    it 'return the first player' do
      expect(game.player_2).to eq 'Bruce Springsteen'
    end
  end

end
