class TrafficEvent
  attr_reader :location

  def initialize(location:)
    @location = location
  end

  def severity
    'unknown'
  end
end
