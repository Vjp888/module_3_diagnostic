class SearchResultsFacade
  attr_reader :zip_code
  def initialize(zipcode)
    @zip_code = zipcode
  end

  def get_stations
    service = NrelDeveloperService.new(@zip_code)
    stations = service.all_stations[:fuel_stations]
    x = stations.map do |station|
      Station.new(station)
    end
  end
end
