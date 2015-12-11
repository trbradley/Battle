require 'game'

describe Game do
  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double :player, name: 'Johnny Cash', hit_points: 60 }
  let(:player_2) { double :player, name: 'Bruce Springsteen', hit_points: 60, receive_damage: true }

  it 'returns the names of players participating' do
    expect(game.players).to eq [player_1, player_2]
  end

  it 'can return participating player 1' do
    expect(game.player_1).to eq player_1
  end

  it 'can return participating player 2' do
    expect(game.player_2).to eq player_2
  end

  describe '#current_turn' do
    it 'starts as player 1' do
      expect(game.current_turn).to eq player_1
    end
  end

  describe 'switch_turns' do
    it 'switches the turn' do
      game.switch_turns
      expect(game.current_turn).to eq player_2
    end
  end

  describe '#opponent_of' do
    it 'finds the opponent of a player' do
      expect(game.opponent_of(player_1)).to eq player_2
      expect(game.opponent_of(player_2)).to eq player_1
    end
  end

  describe '#game_over?' do
    # it 'is false to start' do
    #   expect(game.game_over?).not_to be true
    # end
    #
    # it 'returns true if one player has 0 HP' do
    #   allow(player_2).to receive(:hit_points) { 0 }
    #   expect(game.game_over?).to be true
    # end
    it 'returns nil at start' do
      expect(game.game_over).to eq nil
    end

    it 'returns who the loser is' do
      allow(player_2).to receive(:hit_points) { 0 }
      expect(game.game_over).to eq player_2
    end
  end
end
