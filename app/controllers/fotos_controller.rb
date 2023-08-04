require 'restclient'
class FotosController < ApplicationController
  # caches_action :index, :expires_in => 1.day

  def index
    @albuns_photos = {}
    @albuns = []

    url = "https://graph.facebook.com/daniella.alcarpe/albums?#{Facebook.token}"

    albuns = JSON.parse(RestClient.get(url))["data"]
    albuns.each do |album|
      if (album['description'] == "*")
        url = URI::encode("https://graph.facebook.com/#{album['id']}/photos?#{Facebook.token}")
        photos = JSON.parse(RestClient.get(url))["data"]
        albuns_photos = photos.map {|p| p["images"][3]["source"]}
        album['photos'] = albuns_photos
        @albuns << album
      end
    end
  end

  def album
    photos = JSON.parse(RestClient.get("https://graph.facebook.com/#{params['album_name']}/photos"))["data"]
    albuns_photos = photos.map {|p| p["images"][0]["source"]}
    render :text =>  albuns_photos.reverse.to_json
  end


end
