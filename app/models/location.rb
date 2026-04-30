class Location
  attr_reader :x, :y

  def initialize(x, y)
    @x = x
    @y = y
  end

  def distance_to(other_location)
    Math.sqrt((x - other_location.x)**2 + (y - other_location.y)**2)
  end
end
