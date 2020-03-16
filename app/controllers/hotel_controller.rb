require 'amadeus'

class HotelController < ApplicationController
  def index
  end
  def searchhotel
    hotel = find_hotel_offers(params[:citycode], params[:checkInDate], params[:checkOutDate], params[:adults])
  
    unless hotel
      flash[:alert] = 'Could not get Hotel Info'
      return render action: :index
    end
    @hotelList = hotel
  end

  def find_hotel_offers(citycode, checkInDate, checkOutDate, adults)
    amadeus = hotel_conexion()
    puts citycode
    response = amadeus.shopping.hotel_offers.get(cityCode: (URI.encode(citycode)))
    response.data
  end

  def hotel_conexion()

    amadeus = Amadeus::Client.new({
      client_id: 'GfCm2MQJMp5cWOuEF3Gs1dong3lL7wrK',
      client_secret: '1a4VItWsGjz0dVIp'
    })

  end
end
