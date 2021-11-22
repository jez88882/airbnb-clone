require 'open-uri'
require 'json'
# require 'mapbox-gl'


class FlatsController < ApplicationController

  def index
    url = 'https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json'
    @flats = JSON.parse(open(url).read)
  end

  def show
    url = 'https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json'
    flats = JSON.parse(open(url).read)
    id = params[:id]
    @showflat = flats.find { |flat| flat['id'] == id.to_i }
    # geo_url = 'https://api.openweathermap.org/data/2.5/weather?q=London&appid=d34a84befd963dd8e6cc8444aea1d775'



  #   mapboxgl.accessToken = 'd34a84befd963dd8e6cc8444aea1d775';
  #   map =  mapboxgl.Map({
  #     container: 'map',
  #     style: 'mapbox://styles/mapbox/streets-v9',
  #     center: [ @showflat["lat"], @showflat["long"] ],
  #     zoom: 12
  #   });

  #   new mapboxgl.Marker()
  # .setLngLat([ -0.077, 51.533 ])
  # .addTo(map);
  end
end
