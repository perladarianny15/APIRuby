require 'amadeus'

class FlightController < ApplicationController
  def index
  end
  def airline_info
    if(params[:airlinecode].blank?)
      flash[:alert] = 'Could not get Airline Info'
    else
      airline = find_airline_info_bycode(params[:airlinecode])
      unless airline
        flash[:alert] = 'Could not get Airline Info'
        return render action: :index
      end
      
    end

    @Airline = airline
  end

  def flight_inspiration

    if(params[:citycode].blank?)
      flash[:alert] = 'Could not get Flight Info'
    else
      flight_inspiration = find_flight_inspiration_bycode(params[:citycode])
      unless flight_inspiration
        flash[:alert] = 'Could not get Flight Info'
        return render action: :index
      end
      
    end

    @FlightInsp = flight_inspiration
  end

  def find_flight_inspiration_bycode(citycode)
    amadeus = flight_conexion()
    response = amadeus.shopping.flight_destinations.get(origin: (URI.encode(citycode)))

    response.data
  end

  def find_airline_info_bycode(airlinecode)
    amadeus = flight_conexion()
    response = amadeus.reference_data.airlines.get(airlineCodes: (URI.encode(airlinecode)))
    response.data
  end

  def flight_conexion()

    amadeus = Amadeus::Client.new({
      client_id: 'GfCm2MQJMp5cWOuEF3Gs1dong3lL7wrK',
      client_secret: '1a4VItWsGjz0dVIp'
    })

  end
end
