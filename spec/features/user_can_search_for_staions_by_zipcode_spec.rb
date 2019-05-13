require 'rails_helper'

RSpec.describe 'As a user', type: :feature do
  describe 'When I enter a zipode' do
    it 'shows the zipcode the user is looking for' do
      visit root_path

      fill_in 'q', with: '80206'

      click_on 'Locate'

      expect(page).to have_content('Stations for 80206')
    end
  end
end
