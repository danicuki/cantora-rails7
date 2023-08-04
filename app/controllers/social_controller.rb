
class SocialController < ApplicationController
	def index
		feed = Feedzirra::Feed.fetch_and_parse("https://api.twitter.com/1/statuses/user_timeline.rss?user_id=22095868")
		# feed = FeedNormalizer::FeedNormalizer.parse open('http://twitter.com/statuses/user_timeline/22095868.rss')
		# rss = SimpleRSS.parse open('http://twitter.com/statuses/user_timeline/22095868.rss')
		@twits = feed.entries if feed != 0
        # @comments = Comment.find(:all)
	end

end
