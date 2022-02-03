require 'rails_helper'

describe 'available airport code requests' do
  describe 'happy path' do
    it 'can pull all available airport codes' do
      get '/available-airport-codes'

      expect(response).to be_successful

      airport_codes = JSON.parse(response.body, symbolize_names: true)

      expect(airport_codes).to be_an(Array)
      expect(airport_codes.length).to eq(29)

      expect(airport_codes[0]).to be_a(String)
      expect(airport_codes[0].length).to eq(3)
    end
  end
end
