require 'amadeus'

class HotelController < ApplicationController
  def index
  end
  def searchhotel
    airline = find_hotel_offers(params[:citycode])
    
    unless airline
      flash[:alert] = 'Could not get Airline Info'
      return render action: :index
    end
    @Airline = airline
  end

  def find_hotel_offers(citycode)
    
    amadeus = Amadeus::Client.new({
      client_id: 'GfCm2MQJMp5cWOuEF3Gs1dong3lL7wrK',
      client_secret: '1a4VItWsGjz0dVIp'
    })

    response = amadeus.reference_data.airlines.get(airlineCodes: (URI.encode(citycode)))
    response.data
  end
end
