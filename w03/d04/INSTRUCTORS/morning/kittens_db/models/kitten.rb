class Kitten < ActiveRecord::Base
  def url
    "http://placekitten.com/#{self.width}/#{self.height}"
  end
end