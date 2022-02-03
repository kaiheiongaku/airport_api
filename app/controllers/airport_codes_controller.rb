class AirportCodesController < ApplicationController
  def index
    render json: AirportsFacade.airport_codes
  end
end
