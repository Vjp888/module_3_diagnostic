require 'rails_helper'

RSpec.describe NrelDeveloperService, type: :mode do
  describe 'instance methods' do
    it 'all_stations' do
      service = NrewlDeveloperService.new('80206')

      results = service.all_stations

      expect(results).to be_a(Array)
      expect(results.count).to eq(90)
      expect(results.first).to be_a(Hash)
    end
  end
end
