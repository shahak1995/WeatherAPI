require 'spec_helper'

describe 'latest five day forecast weather data through name and id' do

  context 'test five day forecast weather data by name' do 

    before(:all) do
      @current = Weather.new.fivedayWeather
      @current.retrieve_five_day_weather_name('London')
    end

    it 'should return a string data type from the cod key' do
      expect(@current.getcod).to be_kind_of(String)
    end

    it 'should return a float data type from the message key' do
      expect(@current.getmessage).to be_kind_of(Float)
    end

    it 'should return a integer data type from the cnt key' do
      expect(@current.getcnt).to be_kind_of(Integer)
    end

    it 'should return a array from the list field' do
      expect(@current.getlist).to be_kind_of(Array)
    end

    it 'should return all of the dt from the list array as an integer' do
      @current.get_all_dt.each do |dt|
      expect(dt).to be_kind_of(Integer)
      end 
    end

    it 'should return all of the main hashes as a hash' do
      @current.get_all_main.each do |main|
        expect(main).to be_kind_of(Hash)
      end 
    end 

    it 'should return all of the temp in the main hash as a float' do
      @current.get_all_main_temp.each do |temp|
        expect(temp).to be_kind_of(Float)
      end 
    end 

    it 'should return all of the minimum temp in the main hash as a float' do
      @current.get_all_main_temp_min.each do |temp_min|
        expect(temp_min).to be_kind_of(Float)
      end 
    end 

    it 'should return all of the maximum temp in the main hash as a float' do
      @current.get_all_main_temp_max.each do |temp_max|
        expect(temp_max).to be_kind_of(Float)
      end 
    end 

    it 'should return all of the pressure keys in the main hash as a float or integer' do
      @current.get_all_pressure.each do |pressure|
        expect(pressure).to be_kind_of(Float) | be_kind_of(Integer)
      end 
    end 

    it 'should return all of the sea level keys in the main hash as a float or integer' do
      @current.get_all_sea_level.each do |sea_level|
        expect(sea_level).to be_kind_of(Float) | be_kind_of(Integer)
      end 
    end 

    it 'should return all of the grnd level keys in the main hash as a float or integer' do
      @current.get_all_grnd_level.each do |grnd_level|
        expect(grnd_level).to be_kind_of(Float) | be_kind_of(Integer)
      end 
    end 

    it 'should return all of the humidity level keys in the main hash as a integer' do
      @current.get_all_humidity.each do |humidity|
        expect(humidity).to be_kind_of(Integer)
      end 
    end 

    it 'should return all of the temp_kf level keys in the main hash as a float or integer' do
      @current.get_all_temp_kf.each do |temp_kf|
        expect(temp_kf).to be_kind_of(Float) | be_kind_of(Integer)
      end
    end
  end
end

