require 'httparty'
require 'json'
require 'dotenv'
Dotenv.load('.env')

class FiveDayWeather

  # Includes all of the classes from HTTParty to use within this class
  include HTTParty

  # The base uri for the API we will be using
  base_uri 'https://api.openweathermap.org/data/2.5'

  # Method to retrieve five day forecast weather from the API and parse it through JSON using city name
  def retrieve_five_day_weather_name(city_name)
    api_key = ENV['API_KEY']
    @latest_five_day_weather_data = JSON.parse(self.class.get("/forecast?q=#{city_name}&appid=#{api_key}").body)
  end

  # Method to retrieve five day forecast weather from the API and parse it through JSON using city ID
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
      sea_level << all['sea_level']
    end 
    sea_level
  end 

  def get_all_grnd_level
    grnd_level = []
    get_all_main.each do |all|
      grnd_level << all['grnd_level']
    end 
    grnd_level
  end 

  def get_all_humidity
    humidity = []
    get_all_main.each do |all|
      humidity << all['humidity']
    end 
    humidity
  end 

  def get_all_temp_kf
    temp_kf = []
    get_all_main.each do |all|
      temp_kf << all['temp_kf']
    end 
    temp_kf
  end 
end
  

