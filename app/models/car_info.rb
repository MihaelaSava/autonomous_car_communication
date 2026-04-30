class CarInfo
  attr_reader :manufacturer, :model, :unique_id

  def initialize(manufacturer, model, unique_id)
    @manufacturer = manufacturer
    @model = model
    @unique_id = unique_id
  end
end
