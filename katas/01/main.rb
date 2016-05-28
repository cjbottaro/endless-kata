require "gosu"

require "ship"

class HelloWorld < Gosu::Window

  FPS = 60

  def initialize
    super(800, 600, false) # Make an 800x600px window
    @ship = Ship.new(180)
    @needs_redraw = true
  end

  # This is called every 16.67 ms (or 60 times per second).
  def update
    @ship.update
    @needs_redraw ||= @ship.needs_redraw?
  end

  # Show the curson in the window.
  def needs_cursor?
    true
  end

  # Return false if we don't need to redraw the window. Save CPU cycles that way.
  def needs_redraw?
    @needs_redraw
  end

  def button_down(id)
    case id
    when Gosu::KbLeft
      @ship.rotating_left = true
    when Gosu::KbRight
      @ship.rotating_right = true
    end
  end

  def button_up(id)
    case id
    when Gosu::KbLeft
      @ship.rotating_left = false
    when Gosu::KbRight
      @ship.rotating_right = false
    end
  end

  def draw
    if @needs_redraw
      @ship.draw
    end
  end

end

HelloWorld.new.show
