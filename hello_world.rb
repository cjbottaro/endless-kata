require "gosu"

class HelloWorld < Gosu::Window

  HELLO_WORLD_IMAGE = Gosu::Image.from_text("Hello, world!", 50)

  def initialize
    super(800, 600, false) # Make an 800x600px window
    @needs_redraw = false
  end

  # This is called every 16.67 ms (or 60 times per second).
  def update
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
    when Gosu::KbSpace
      @space_pressed = true
      @needs_redraw = true
    end
  end

  def button_up(id)
    case id
    when Gosu::KbSpace
      @space_pressed = false
      @needs_redraw = true
    end
  end

  def draw
    if @space_pressed
      HELLO_WORLD_IMAGE.draw(100, 100, 1)
    end
  end

end

HelloWorld.new.show
