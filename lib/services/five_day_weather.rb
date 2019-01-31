require 'httparty'
require 'json'
require 'dotenv'
Dotenv.load('.env')

class FiveDayWeather
  include HTTParty

  base_uri 'https://api.openweathermap.org/data/2.5'

  def retrieve_five_day_weather_name(city_name)
    api_key = ENV['API_KEY']
    @latest_five_day_weather_data = JSON.parse(self.class.get("/forecast?q=#{city_name}&appid=#{api_key}").body)
  end

  def retrieve_five_day_weather_id(city_id)
    api_key = ENV['API_KEY']
    @latest_five_day_weather_data = JSON.parse(self.class.get("/forecast?id=#{city_id}&appid=#{api_key}").body)
  end

  def getcod
    @latest_five_day_weather_data['cod']
  end 

  def getmessage
    @latest_five_day_weather_data['message']
  end 

  def getcnt
    @latest_five_day_weather_data['cnt']
  end 

  def getlist
    @latest_five_day_weather_data['list']
  end 

  def get_all_dt
    dt = []
    getlist.each do |result|
      dt << result['dt']
    end 
    dt
  end 

  def get_all_main
    main = []
    getlist.each do |all|
      main << all['main']
    end 
    main
  end 

  def get_all_main_temp
    temp = []
    get_all_main.each do |all|
      temp << all['temp']
    end 
    temp
  end 

  def get_all_main_temp_min
    temp_min = []
    get_all_main.each do |all|
      temp_min << all['temp_min']
    end 
    temp_min
  end 

  def get_all_main_temp_max
    temp_max = []
    get_all_main.each do |all|
      temp_max << all['temp_max']
    end 
    temp_max
  end 

  def get_all_pressure
    pressure = []
    get_all_main.each do |all|
      pressure << all['pressure']
    end 
    pressure
  end 

  def get_all_sea_level
    sea_level = []
    get_all_main.each do |all|
      sea_level << all['pressure']
    end 
    pressure
  end 
end
  

