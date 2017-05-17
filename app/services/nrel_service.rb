class NrelService
  attr_reader :connection

  def initialize
    @connection = Faraday.new("https://developer.nrel.gov/")
  end

  def stations(location)
    parse(connection.get('api/alt-fuel-stations/v1/nearest',
                        { location: location,
                          radius: '6.0',
                          api_key: ENV['nrel_api_key'],
                          format: 'json',
                          limit: '10',
                          fuel_type: 'LPG,ELEC' }))[:fuel_stations]
  end

  private

  def parse(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end
