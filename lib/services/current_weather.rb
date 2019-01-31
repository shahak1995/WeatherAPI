require 'httparty'
require 'json'
require 'dotenv'
Dotenv.load('.env')

class CurrentWeather

  # Includes all of the classes from HTTParty to use within this class
  include HTTParty

  # The base uri for the API we will be using
  base_uri 'https://api.openweathermap.org/data/2.5'

  # Method to retrieve current weather from the API and parse it through JSON using city name
  def retrieve_current_weather_name(city_name)
    api_key = ENV['API_KEY']
    @latest_weather_data = JSON.parse(self.class.get("/weather?q=#{city_name}&appid=#{api_key}").body)
  end

  # Method to retrieve current weather fromt the API and parse it through JSON using city ID
  def retrieve_current_weather_id(city_id)
    api_key = ENV['API_KEY']
    @latest_weather_data = JSON.parse(self.class.get("/weather?id=#{city_id}&appid=#{api_key}").body)
  end

  def print_results
    print @latest_weather_data
  end

  def getcoord
    @latest_weather_data['coord']
  end

  def getlon
    getcoord['lon']
  end

  def getlat
    getcoord['lat']
  end

  def getweather
    @latest_weather_data['weather']
  end

  def getid
    getweather[0]['id']
  end

  def getmain
    getweather[0]['main']
  end

  def getdescription
    getweather[0]['description']
  end

  def geticon
    getweather[0]['icon']
  end

  def getbase
    @latest_weather_data['base']
  end

  def getsecondmain
    @latest_weather_data['main']
  end

  def gettemp
    getsecondmain['temp']
  end

  def getpressure
    getsecondmain['pressure']
  end

  def gethumidity
    getsecondmain['humidity']
  end

  def getminimumtemp
    getsecondmain['temp_min']
  end

  def getmaximumtemp
    getsecondmain['temp_max']
  end

  def getvisibility
    @latest_weather_data['visibility']
  end

  def getwind
    @latest_weather_data['wind']
  end

  def getspeed
    getwind['speed']
  end

  def getdeg
    getwind['deg']
  end

  def getclouds
    @latest_weather_data['clouds']
  end

  def getall
    getclouds['all']
  end 

  def getdt
    @latest_weather_data['dt']
  end

  def getsys
    @latest_weather_data['sys']
  end

  def gettype
    getsys['type']
  end

  def getsecond_id
    getsys['id']
  end

  def getmessage
    getsys['message']
  end

  def getcountry
    getsys['country']
  end

  def getsunrise
    getsys['sunrise']
  end

  def getsunset
    getsys['sunset']
  end

  def getidinteger
    @latest_weather_data['id']
  end

  def getname
    @latest_weather_data['name']
  end

  def getcod
    @latest_weather_data['cod']
  end
end

test = CurrentWeather.new
p test.retrieve_current_weather_id('2172797')
