class Comment < ActiveResource::Base
	self.site = "http://www.jango.com/artists/48343/"
	self.headers["User-agent"] = "Mozilla/5.0"
	
	def user
		@user ||= User.find(user_id)
	end
end