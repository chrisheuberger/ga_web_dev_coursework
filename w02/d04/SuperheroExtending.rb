
module Breathe
  def respiration
    'I can breathe'
  end
end


module Think
  def think_about_stuff
    'I can think'
  end
end

class Human
  include Breathe
  include Think
  def person
    'I think therefor I am.'
  end
end

module Superhero < Human
  def fly
    'I fly'
  end
  def shoot_web
    'I shoot a web'
  end
  def teleport
    'I can teleport'
  end
end

module Runner
  def run
    'I can run fast'
  end
end

module Book_worm
  def read
    'I read books'
  end
end

module Chef
  def tall
    'I am tall'
  end
end

module Italian
  def italy
    'I am from Italy'
  end
end

the_italian_wasp = Human.new.extend(Italian, Book_worm)
the_running_wonder = Human.new.extend(Chef, Runner, Italian)
