class AirportsService
  class << self
    def connection
      Faraday.new('https://flare-code-exercise-data.s3.amazonaws.com/airlines.json')
    end

    def obtain_airports_data
      response = connection.get
      JSON.parse(response.body, symbolize_names: true)
    end
  end
end
