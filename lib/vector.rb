class Vector

  attr_accessor :angle, :magnitude, :x, :y

  def initialize(angle, magnitude)
    @angle = angle
    @magnitude = magnitude
    @x = Gosu.offset_x(angle, magnitude)
    @y = Gosu.offset_y(angle, magnitude)
  end

  def +(that)
    new_x = x + that.x
    new_y = y + that.y

    new_angle = Gosu.angle(0, 0, new_x, new_y)
    new_magnitude = Gosu.distance(0, 0, new_x, new_y)

    self.class.new(new_angle, new_magnitude)
  end

  def point
    [x, y]
  end

  alias_method :length, :magnitude

end
