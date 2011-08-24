# myplaces.rb

require 'rubygems'  
require 'sinatra'
require 'haml'

class Location
  key :longitude, Float
  key :latitude, Float
end

get '/' do
  haml :index
end

post '/here' do
  @location = Location.new( :longitude => params[:longitude], :latitude => params[:latitude])
  haml :here
end