require 'rails_helper'

describe 'NREL Service' do
  it 'finds stations at location' do
    @service = NrelService.new
    stations = @service.stations('80203')

  end

end
