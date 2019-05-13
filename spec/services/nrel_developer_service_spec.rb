require 'rails_helper'

RSpec.describe NrelDeveloperService, type: :mode do
  describe 'instance methods' do
    it 'all_stations' do
      service = NrelDeveloperService.new('80206')

      results = service.all_stations

      expect(results[:total_results]).to eq(93)
      expect(results).to be_a(Hash)
    end
  end
end
