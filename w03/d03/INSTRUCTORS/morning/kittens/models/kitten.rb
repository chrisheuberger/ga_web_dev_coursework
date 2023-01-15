class Kitten
  def initialize
    @height
    @width
  end

  def random
    @height = rand(100..500)
    @width = rand(100..500)
    "http://placekitten.com/#{@width}/#{@height}"
  end
end