require 'rails_helper'

RSpec.describe 'As a user', type: :feature do
  describe 'When I enter a zipode' do
    it 'shows the zipcode the user is looking for' do
      visit root_path

      fill_in 'q', with: '80206'

      click_on 'Locate'

      expect(page).to have_content('Stations for 80206')
    end

    it 'shows a listing of stations for a given area' do
      visit root_path

      fill_in 'q', with: '80206'

      click_on 'Locate'

      within '.all-stations' do
        expect(page.all('h3').count).to eq(20) #paginates the results should ideally be 93
      end
    end
  end
end
