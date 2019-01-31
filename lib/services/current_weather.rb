require 'httparty'
require 'json'
require 'dotenv'

class Current_Weather
  include HTTParty

  base_uri 'https://api.openweathermap.org/data/2.5'

  def retrieve_current_weather(city_name)
    api_key = '4e0c46c583623427c8a51f370e0dddb8'
    @latest_weather_data = JSON.parse(self.class.get("/weather?q=#{city_name}&appid=#{api_key}").body)
  end

  def print_results
    print @latest_weather_data
  end

end

test = Current_Weather.new
test.retrieve_current_weather('Manchester')
test.print_results
