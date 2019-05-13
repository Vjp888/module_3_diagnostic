class NrelDeveloperService
  def initialize(zipcode)
    @zipcode = zipcode
  end

  def all_stations
    conn = Faraday.new("https://developer.nrel.gov/api/alt-fuel-stations/v1/nearest.json?api_key=#{ENV['NREL_API_KEY']}&location=#{@zipcode}&access=public&fuel_type=ELEC,LPG")
    response  = conn.get
    data = JSON.parse(response.body, symbolize_names: true)
  end
end
