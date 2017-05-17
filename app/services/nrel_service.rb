class NrelService
  attr_reader :connection

  def initialize
    @connection = Faraday.new("https://developer.nrel.gov/api/alt-fuel-stations/v1/")
  end

  def stations(location)
    require "pry"; binding.pry
    connection.get('location', location)
  end
end
