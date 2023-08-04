module Mailee
  class MaileeResource < ActiveResource::Base
    self.site = "http://api.7bae89640dc49.cantora.mailee.me"
  end
  class Contact < MaileeResource
  end
  class List < MaileeResource
  end
end