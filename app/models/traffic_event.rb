class TrafficEvent
  attr_reader :distance_from_car

  def initialize(distance_from_car:)
    @distance_from_car = distance_from_car
  end

  def severity
    'unknown'
  end
end
