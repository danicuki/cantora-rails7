class User < ActiveResource::Base
	self.site = "http://www.jango.com"
	self.headers["User-agent"] = "Mozilla/5.0"
	
end