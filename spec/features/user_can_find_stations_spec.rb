require 'rails_helper'

describe 'Dashboard' do
  it 'User can find nearest stations' do
    visit root_path

    fill_in :q, with: '80203'
    click_on 'Locate'

    expect(page).to have_current_path("/search?utf8=%E2%9C%93&q=80203&commit=Locate")
    expect(page).to have_content 'Station Count: 10'

    expect(page).to have_content 'Station Name: UDR'
    expect(page).to have_content 'Address: 800 Acoma St'
    expect(page).to have_content 'Fuel Types: ELEC'
    expect(page).to have_content 'Distance: 0.31422'
    expect(page).to have_content 'Access Times: 24 hours daily '
  end
end
