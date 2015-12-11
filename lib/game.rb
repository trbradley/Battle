require 'forwardable'

class Game
  extend Forwardable
  def_delegator :player_1, :name, :player_1_name
  def_delegator :player_2, :name, :player_2_name
  def_delegator :player_1, :hit_points, :player_1_hp
  def_delegator :player_2, :hit_points, :player_2_hp

  attr_reader :players, :current_turn

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @current_turn = player_1
  end

  def attack(player)
    player.receive_damage
  end

  def player_1
    @players[0]
  end

  def player_2
    @players[1]
  end

  def switch_turns
    @current_turn = opponent_of(current_turn)
  end

  def previous_player
    opponent_of(current_turn)
  end

  private

  def opponent_of(the_player)
    @players.find { |player| player != the_player }
  end
end
