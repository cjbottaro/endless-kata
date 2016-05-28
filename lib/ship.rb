require "vector"
require "point"

class Ship

  IMAGE = Gosu::Image.new("assets/ship.png")
  PROPULSION = Gosu::Image.new("assets/propulsion.png")

  attr_accessor :rotating_left, :rotating_right, :accelerating

  def initialize(rotation_speed)
    @rotation_speed = rotation_speed
    @rotation_per_update = rotation_speed / 60.to_f

    @heading = 0
    @position = Point.new(800/2, 600/2)
    @velocity_vector = Vector.new(0, 0)

    @acceleration = 10
    @acceleration_per_update = @acceleration / 60.to_f

    update_engine_position
  end

  def update
    if rotating_left
      @heading -= @rotation_per_update
    elsif rotating_right
      @heading += @rotation_per_update
    end

    if accelerating
      acceleration_vector = Vector.new(@heading, @acceleration_per_update)
      @velocity_vector += acceleration_vector
    end

    if moving?
      @position += @velocity_vector.point
    end

    if rotating_left || rotating_right || moving?
      update_engine_position
    end
  end

  def moving?
    @velocity_vector.length > 0
  end

  def update_engine_position
    x = @position.x
    y = @position.y
    r = IMAGE.height/2
    rads1 = (Math::PI/180) * (@heading + 5 + 90)
    rads2 = (Math::PI/180) * (@heading - 5 + 90)
    @engine1 = [x + r * Math.cos(rads1), y + r * Math.sin(rads1)]
    @engine2 = [x + r * Math.cos(rads2), y + r * Math.sin(rads2)]
  end

  def needs_redraw?
    rotating_left || rotating_right || moving?
  end

  def draw
    IMAGE.draw_rot(@position.x, @position.y, 1, @heading)
    if accelerating
      PROPULSION.draw_rot(*@engine1, 1, @heading)
      PROPULSION.draw_rot(*@engine2, 1, @heading)
    end
  end

end
