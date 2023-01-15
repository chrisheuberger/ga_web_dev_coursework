Kitten.delete_all
100.times do
  width   = rand(100..400)
  height  = rand(100..400)
  url     = "http://placekitten.com/#{width}/#{height}"
  Kitten.create(width: width, height: height, url: url)
end