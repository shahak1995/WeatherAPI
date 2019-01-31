require 'spec_helper'

describe 'latest current weather data through name and id' do

  context 'test current weather data by name' do 

    before(:all) do
      @current = Weather.new.currentWeather
      @current.retrieve_current_weather_name('London')
    end

    it 'should retrieve the coord has as a hash data type' do
      expect(@current.getcoord).to be_kind_of(Hash)
    end

    it 'should retrieve a float from the lon key' do
      expect(@current.getlon).to be_kind_of(Float)
    end

    it 'should retrieve a float from the lan key' do
      expect(@current.getlon).to be_kind_of(Float)
    end

    it 'should retrieve weather as a Array' do
      expect(@current.getweather).to be_kind_of(Array)
    end

    it 'should retrieve a integer from the id key' do
      expect(@current.getid).to be_kind_of(Integer)
    end

    it 'should retrieve a string from the main key' do
      expect(@current.getmain).to be_kind_of(String)
    end

    it 'should retrieve a string from the description key' do
      expect(@current.getdescription).to be_kind_of(String)
    end

    it 'should retrieve a string from the icon key' do
      expect(@current.geticon).to be_kind_of(String)
    end

    it 'should retrieve the base key as a string data type' do
      expect(@current.getbase).to be_kind_of(String)
    end

    it 'should retrieve the main key as a hash data type' do
      expect(@current.getsecondmain).to be_kind_of(Hash)
    end

    it 'should retrieve the temp key as a float data type' do
      expect(@current.gettemp).to be_kind_of(Float)
    end

    it 'should retrieve the pressure key as a integer data type' do
      expect(@current.getpressure).to be_kind_of(Integer)
    end

    it 'should retrieve the humidity key as a integer data type' do
      expect(@current.gethumidity).to be_kind_of(Integer)
    end

    it 'should retrieve the minimum temperature key as a float data type' do
      expect(@current.getminimumtemp).to be_kind_of(Float)
    end

    it 'should retrieve the maximum temperature key as a float data type' do
      expect(@current.getmaximumtemp).to be_kind_of(Float)
    end

    it 'should retrieve the visibility key as a integer data type' do
      expect(@current.getvisibility).to be_kind_of(Integer)
    end

    it 'should retrieve the speed key as a float data type' do
      expect(@current.getspeed).to be_kind_of(Float)
    end

    it 'should retrieve the deg key as a integer data type' do
      expect(@current.getdeg).to be_kind_of(Integer)
    end

    it 'should retrieve the clouds key as a hash data type' do
      expect(@current.getclouds).to be_kind_of(Hash)
    end

    it 'should retrieve the all key as a integer data type' do
      expect(@current.getall).to be_kind_of(Integer)
    end

    it 'should retrieve the dt key as a integer data type' do
      expect(@current.getdt).to be_kind_of(Integer)
    end

    it 'should retrieve the sys hash as a hash data type' do
      expect(@current.getsys).to be_kind_of(Hash)
    end

    it 'should retrieve the type key as a integer data type' do
      expect(@current.gettype).to be_kind_of(Integer)
    end

    it 'should retrieve the second id key as a integer data type' do
      expect(@current.getsecond_id).to be_kind_of(Integer)
    end

    it 'should retrieve the message key as a float data type' do
      expect(@current.getmessage).to be_kind_of(Float)
    end

    it 'should retrieve the country key as a string data type' do
      expect(@current.getcountry).to be_kind_of(String)
    end

    it 'should retrieve the sunrise key as a integer data type' do
      expect(@current.getsunrise).to be_kind_of(Integer)
    end

    it 'should retrieve the sunset key as a integer data type' do
      expect(@current.getsunset).to be_kind_of(Integer)
    end

    it 'should retrieve the id key as a integer data type' do
      expect(@current.getidinteger).to be_kind_of(Integer)
    end

    it 'should retrieve the name key as a string data type' do
      expect(@current.getname).to be_kind_of(String)
    end

    it 'should retrieve the cod key as a integer data type' do
      expect(@current.getcod).to be_kind_of(Integer)
    end
  end 

  context 'test current weather data by id' do 

    before(:all) do
      @current = Weather.new.currentWeather
      @current.retrieve_current_weather_id('2172797')
    end

    it 'should retrieve the coord has as a hash data type' do
      expect(@current.getcoord).to be_kind_of(Hash)
    end

    it 'should retrieve a float from the lon key' do
      expect(@current.getlon).to be_kind_of(Float)
    end

    it 'should retrieve a float from the lan key' do
      expect(@current.getlon).to be_kind_of(Float)
    end

    it 'should retrieve weather as a Array' do
      expect(@current.getweather).to be_kind_of(Array)
    end

    it 'should retrieve a integer from the id key' do
      expect(@current.getid).to be_kind_of(Integer)
    end

    it 'should retrieve a string from the main key' do
      expect(@current.getmain).to be_kind_of(String)
    end

    it 'should retrieve a string from the description key' do
      expect(@current.getdescription).to be_kind_of(String)
    end

    it 'should retrieve a string from the icon key' do
      expect(@current.geticon).to be_kind_of(String)
    end

    it 'should retrieve the base key as a string data type' do
      expect(@current.getbase).to be_kind_of(String)
    end

    it 'should retrieve the main key as a hash data type' do
      expect(@current.getsecondmain).to be_kind_of(Hash)
    end

    it 'should retrieve the temp key as a float data type' do
      expect(@current.gettemp).to be_kind_of(Float)
    end

    it 'should retrieve the pressure key as a integer data type' do
      expect(@current.getpressure).to be_kind_of(Integer)
    end

    it 'should retrieve the humidity key as a integer data type' do
      expect(@current.gethumidity).to be_kind_of(Integer)
    end

    it 'should retrieve the minimum temperature key as a float data type' do
      expect(@current.getminimumtemp).to be_kind_of(Float)
    end

    it 'should retrieve the maximum temperature key as a float data type' do
      expect(@current.getmaximumtemp).to be_kind_of(Float)
    end

    it 'should retrieve the visibility key as a integer data type' do
      expect(@current.getvisibility).to be_kind_of(Integer)
    end

    it 'should retrieve the speed key as a float data type' do
      expect(@current.getspeed).to be_kind_of(Float)
    end

    it 'should retrieve the deg key as a integer data type' do
      expect(@current.getdeg).to be_kind_of(Integer)
    end

    it 'should retrieve the clouds key as a hash data type' do
      expect(@current.getclouds).to be_kind_of(Hash)
    end

    it 'should retrieve the all key as a integer data type' do
      expect(@current.getall).to be_kind_of(Integer)
    end

    it 'should retrieve the dt key as a integer data type' do
      expect(@current.getdt).to be_kind_of(Integer)
    end

    it 'should retrieve the sys hash as a hash data type' do
      expect(@current.getsys).to be_kind_of(Hash)
    end

    it 'should retrieve the type key as a integer data type' do
      expect(@current.gettype).to be_kind_of(Integer)
    end

    it 'should retrieve the second id key as a integer data type' do
      expect(@current.getsecond_id).to be_kind_of(Integer)
    end

    it 'should retrieve the message key as a float data type' do
      expect(@current.getmessage).to be_kind_of(Float)
    end

    it 'should retrieve the country key as a string data type' do
      expect(@current.getcountry).to be_kind_of(String)
    end

    it 'should retrieve the sunrise key as a integer data type' do
      expect(@current.getsunrise).to be_kind_of(Integer)
    end

    it 'should retrieve the sunset key as a integer data type' do
      expect(@current.getsunset).to be_kind_of(Integer)
    end

    it 'should retrieve the id key as a integer data type' do
      expect(@current.getidinteger).to be_kind_of(Integer)
    end

    it 'should retrieve the name key as a string data type' do
      expect(@current.getname).to be_kind_of(String)
    end

    it 'should retrieve the cod key as a integer data type' do
      expect(@current.getcod).to be_kind_of(Integer)
    end
  end 
end 