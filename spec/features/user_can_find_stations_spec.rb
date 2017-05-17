require 'rails_helper'

describe 'Dashboard' do
  it 'User can find nearest stations' do
    visit root_path

    fill_in :q, with: '80203'
    click_on 'Locate'

    expect(page).to have_current_path('/search?utf8=✓&q=80203&commit=Locate', url: true)
    expect(page).to have_content 'Station Count: 10'

  # Then I should be on page "/search" with parameters visible in the url
  # Then I should see a list of the 10 closest stations within 6 miles sorted by distance
  # And the stations should be limited to Electric and Propane
  # And for each of the stations I should see Name, Address, Fuel Types, Distance, and Access Times
  end
end
