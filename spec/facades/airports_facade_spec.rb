require 'rails_helper'

describe AirportsFacade do
  describe 'airport codes' do
    it 'can return airport codes' do
      expect(AirportsFacade.airport_codes).to be_an(Array)
      expect(AirportsFacade.airport_codes.size).to eq(29)
    end
  end
end
