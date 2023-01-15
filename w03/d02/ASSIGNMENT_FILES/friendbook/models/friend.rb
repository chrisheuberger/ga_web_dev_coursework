class Friend < ActiveRecord::Base

  def update_image
    profile_picture = HTTParty.get("http://graph.facebook.com/#{self.username}?fields=picture")
    profile_picture_hash = JSON(profile_picture)
    self.image_url = ''
    if  profile_picture_hash['picture']
      self.image_url = profile_picture_hash['picture']['data']['url']
    else
      self.image_url = "http://placekitten.com/#{rand(100..500)}/#{rand(100..500)}"
    end
    self
  end

end
