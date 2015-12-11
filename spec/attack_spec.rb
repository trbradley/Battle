require 'attack'

describe Attack do
  subject(:attack) { described_class.new }
  let(:player_1) { double :player, name: 'Johnny Cash' }
  let(:player_2) { double :player, name: 'Bruce Springsteen', receive_damage: true }

  describe '#default_attack' do
    it 'damages the opponent\'s HP' do
      expect(player_2).to receive(:receive_damage)
      attack.default_attack(player_2)
    end
  end
end
