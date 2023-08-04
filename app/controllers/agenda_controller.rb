class AgendaController < ApplicationController

  def index
    resp = RestClient.get("http://api.songkick.com/api/3.0/artists/3845881/calendar.json?apikey=pxqFlES6MqklIqrr")
    json = JSON.parse(resp)
    @list = json['resultsPage']['results']['event']
    return unless @list
    @list.each do |l|
      resp = RestClient.get("http://api.songkick.com/api/3.0/events/#{l['id']}.json?apikey=pxqFlES6MqklIqrr")
      l['venue'] = JSON.parse(resp)['resultsPage']['results']['event']['venue']
    end
  end
end
