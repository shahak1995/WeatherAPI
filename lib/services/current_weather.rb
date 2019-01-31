require 'httparty'
require 'json'
require 'dotenv'
Dotenv.load('../../.env')

class Current_Weather
  include HTTParty

  attr_accessor :latest_weather_data

  base_uri 'https://api.openweathermap.org/data/2.5'

  def retrieve_current_weather_name(city_name)
    api_key = ENV['API_KEY']
    @latest_weather_data = JSON.parse(self.class.get("/weather?q=#{city_name}&appid=#{api_key}").body)
  end

  def retrieve_current_weather_id(city_id)
    api_key = ENV['API_KEY']
    @latest_weather_data = JSON.parse(self.class.get("/weather?id=#{city_id}&appid=#{api_key}").body)
  end

  def retrieve_results

  end 

  def print_results
    print @latest_weather_data
  end
end

test = Current_Weather.new
test.retrieve_current_weather_name('London')
test.print_results
