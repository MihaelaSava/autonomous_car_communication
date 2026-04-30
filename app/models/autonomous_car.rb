class AutonomousCar
  attr_reader :car_info, :current_location, :traffic_events, :received_messages
  attr_accessor :current_speed

  def initialize(car_info:, location:)
    @car_info = car_info
    @current_location = location
    @traffic_events = []
    @received_messages = []
    @current_speed = 0
  end

  def add_traffic_event(event)
    @traffic_events << event
  end

  def recent_traffic_events
    traffic_events.select { |e| e.distance_from_car <= 100 }
  end

  def receive_message(message)
    @received_messages << message
  end

  def send_information_to(other_car)
    data = {
      sender_id: car_info.unique_id,
      car_info: car_info,
      current_location: current_location,
      speed: current_speed,
      traffic_events: recent_traffic_events
    }
    other_car.receive_message(data)
  end

  def distance_to(other_car)
    current_location.distance_to(other_car.current_location)
  end

  def closest_car(cars)
    cars.min_by { |car| distance_to(car) }
  end
end
