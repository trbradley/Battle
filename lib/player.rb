class Player

  DEFAULT_HEALTH = 60
  DAMAGE = 10

  attr_reader :name, :hit_points

  def initialize(name)
    @name = name
    @hit_points = DEFAULT_HEALTH
  end

  def receive_damage
    @hit_points -= DAMAGE
  end

end
