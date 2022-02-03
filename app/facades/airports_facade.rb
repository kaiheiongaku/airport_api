class AirportsFacade
  class << self
    def airport_codes
      airports = AirportsService.obtain_airports_data
      airports.map do |airport|
        airport[:Airport][:Code]
      end.uniq
    end
  end
end
