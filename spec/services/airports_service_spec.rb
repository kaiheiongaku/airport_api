require 'rails_helper'

describe AirportsService do
  describe "connects with Airport API" do
    it "returns with valid data" do
      expect(AirportsService.obtain_airports_data).to be_an(Array)

      expect(AirportsService.obtain_airports_data[0]).to be_a(Hash)
      expect(AirportsService.obtain_airports_data[0].keys).to eq([:Airport, :Time, :Statistics])

      expect(AirportsService.obtain_airports_data[0][:Statistics]). to be_a(Hash)
      expect(AirportsService.obtain_airports_data[0][:Statistics].keys). to eq([:"# of Delays", :Carriers, :Flights, :"Minutes Delayed"])
    end
  end
end
