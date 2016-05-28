class Point

  attr_accessor :x, :y

  def initialize(*args)
    if args.empty?
      @x, @y = 0, 0
    elsif args.length == 2
      @x, @y = args
    elsif args.first.kind_of?(Array)
      @x, @y = args.first
    elsif args.first.kind_of?(Point)
      @x, @y = args.first.coords
    else
      raise ArgumentError, "invalid args: #{args.inspect}"
    end
  end

  def to_a
    [@x, @y]
  end

  def +(other)
    case other
    when Array
      x, y = other
      Point.new(@x + x, @y + y)
    when Point
      Point.new(@x + other.x, @y + other.y)
    else
      raise ArgumentError, "invalid args: #{other.inspect}"
    end
  end

  def -(other)
    case other
    when Array
      x, y = other
      Point.new(@x - x, @y - y)
    when Point
      Point.new(@x - other.x, @y - other.y)
    else
      raise ArgumentError, "invalid args: #{other.inspect}"
    end
  end

end
