class Facebook

  def self.token
    @@auth ||= RestClient.get("https://graph.facebook.com/oauth/access_token?client_id=721288668002045&client_secret=4c22072ffe55e37f277f1ada11495522&grant_type=client_credentials")
  end
end
