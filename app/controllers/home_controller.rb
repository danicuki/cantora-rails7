require 'restclient'

class HomeController < ApplicationController
    # caches_action :index

	def index
        @videos = ['fmkrhff-uoA', 'bQUsSFgQrhk', 'aO4_AbcXfGo', 'jO3Kbn0178g', 'We3fYDqMPng']
        # video_feed = RestClient.get("http://gdata.youtube.com/feeds/api/users/daniellaalcarpe/uploads")
        # @videos = Hash.from_xml(video_feed)['feed']['entry']
	end

end
