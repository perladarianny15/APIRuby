class TravelController < ApplicationController
  def index
  end
  def search
    countries = find_country(params[:country])

    unless countries
      flash[:alert] = 'Country not found'
      return render action: :index
    end

    @country = countries.first
    @weather = find_weather(@country['capital'], @country['alpha2Code'])
  end

  def request_api(url)
    response = HTTParty.get('https://restcountries-v1.p.rapidapi.com')
      response = Excon.get(
        url,
        headers: {
          "x-rapidapi-host": "restcountries-v1.p.rapidapi.com",
          "x-rapidapi-key": "689d05b9ffmsh39e85091c337c51p1f12bfjsn31d59f45061c"
        }
      )

    return nil if response.status != 200

    JSON.parse(response.body)
  end

  def find_country(name)
    request_api(
      "https://restcountries-v1.p.rapidapi.com/name/#{URI.encode(name)}"
    )
  end
  def find_weather(city, country_code)
    query = URI.encode("#{city},#{country_code}")
    request_api(
      "https://community-open-weather-map.p.rapidapi.com/forecast?q=#{query}"
    )
  end
end
