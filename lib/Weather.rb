require_relative './services/current_weather'
require_relative './services/five_day_weather'

class Weather
  def currentWeather
    CurrentWeather.new
  end

  def fivedayWeather
    FiveDayWeather.new
  end
end
