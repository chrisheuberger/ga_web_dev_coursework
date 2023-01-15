require 'sinatra'
require 'sinatra/reloader'

require 'Faker'

module Sentence

  def self.verb
    ['loves', 'hates', 'coddles', 'honors', 'cherishes', 'tickles'].sample
  end

  def self.noun
    ['banana', 'soup', 'ship', 'sail', 'map', 'bottle'].sample
  end

  def self.season
    ['winter', 'spring', 'autumn', 'summer'].sample
  end

  def self.name
    Faker::Name.name
  end

  def self.adjective
    ['wise', 'ordinary', 'extraordinary', 'lovely'].sample
  end

  def self.being
    ['cat', 'kitten', 'monkey', 'kitten'].sample
  end

  def self.phrase
    "#{self.name}, the #{self.adjective} #{self.being}, #{self.verb} a #{self.noun} in the #{self.season} time."
  end

end




get '/' do
  Sentence.phrase
end

