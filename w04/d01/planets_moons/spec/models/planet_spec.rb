require 'spec_helper'

def planet_life
  if @planets.life == 'false'
    'not'
  else
    ''
  end
end

describe to_s do
  puts "#{planet.name} is a planet with #{Planets.length} moon(s),#{ planet_life} capable of sustaining life."
end
