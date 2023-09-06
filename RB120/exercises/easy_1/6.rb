class Flight
  def initialize(flight_number)
    init_db
    @flight_number = flight_number
  end

  private
  def init_db
    @database_handle = Database.init
  end

  attr_accessor :database_handle
end