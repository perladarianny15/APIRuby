require 'amadeus'

class FlightController < ApplicationController
  def index
  end
  def search_airline_info

    puts "*" * 500
    airline = find_airline_info_bycode(params[:airlinecode])
    puts airline

    unless airline
      flash[:alert] = 'Could not get Airline Info'
      return render action: :index
    end

    @Airline = airline
  end

  def find_airline_info_bycode(airlinecode)
    
    amadeus = Amadeus::Client.new({
      client_id: 'GfCm2MQJMp5cWOuEF3Gs1dong3lL7wrK',
      client_secret: '1a4VItWsGjz0dVIp'
    })

    response = amadeus.reference_data.airlines.get(airlineCodes: (URI.encode(airlinecode)))
    response.data
  end
end
