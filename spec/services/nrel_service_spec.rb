require 'rails_helper'

describe 'NREL Service' do
  it 'finds stations at location' do
    @service = NrelService.new
    stations = @service.stations('80203')

    expect(stations.count).to eq(10)
    expect(stations.first[:station_name]).to eq('UDR')
    expect(stations.first[:zip]).to eq('80204')
    expect(stations.last[:station_name]).to eq("Hyatt Regency Denver")
    expect(stations.last[:zip]).to eq('80202')
  end

end
