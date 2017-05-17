require 'rails_helper'

describe 'Dashboard' do
  it 'User can find nearest stations' do
    user = User.new(token: ENV["nrel_api_key"])
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

    visit dashboard_index_path

    fill_in 'zip_code', with: '80203'
    click_on 'locate'

    expect(page).to have_current_path(search_path(location: '80203'))
    expect(page).to have_content 'Station Count: 10'

  # Then I should be on page "/search" with parameters visible in the url
  # Then I should see a list of the 10 closest stations within 6 miles sorted by distance
  # And the stations should be limited to Electric and Propane
  # And for each of the stations I should see Name, Address, Fuel Types, Distance, and Access Times
  end
end
