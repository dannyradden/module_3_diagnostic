class NrelService
  attr_reader :connection

  def initialize
    @connection = Faraday.new('https://developer.nrel.gov/api/alt-fuel-stations/v1/nearest')
  end

  
end
