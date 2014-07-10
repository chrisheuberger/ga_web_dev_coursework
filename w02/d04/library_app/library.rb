# encoding: utf-8

module ElectronicPublication
  def copy_paste
    'I copy pasted'
  end
end

module PrintPublication
  def medium_info
    'I am thing you can hold'
  end
end

module Fiction
  def plot_twist
    'And now all you knew is suddenly wrong'
  end
end

module NonFiction
  def historical_fact
    'In that year, this thing happened'
  end
end

module Art
  def affect_people
    'I can affect people'
  end
end

class Manuscript
  include Art
  def communicate
    "I communicate something"
  end
end

class Book < Manuscript
  def cover_page
    'i have a cover page'
  end
end

class Scroll < Manuscript
  def roll_up
    'i can roll'
  end
end

the_great_WDIsby = Book.new.extend(Fiction, PrintPublication)
wdipedia = Book.new.extend(NonFiction, ElectronicPublication)
