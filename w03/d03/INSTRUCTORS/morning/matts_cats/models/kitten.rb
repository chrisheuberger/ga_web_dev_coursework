class Kitten
  attr_reader :url
  def initialize
    @url = "http://placekitten.com/#{rand(100..500)}/#{rand(100..500)}"
  end
end
