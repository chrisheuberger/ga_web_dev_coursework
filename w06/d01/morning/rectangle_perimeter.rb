class Rect_functional
  def initialiaze(w, h)
    @w = w
    @h = h
  end
end

module RhombusMath
  def self.perimeter(w, h)
    (@w*2) + (@h*2)
  end
end

# - - - -

class Rect_non_functional
  def initialiaze(w, h)
    @w = w
    @h = h
  end
  def perimeter
    @rect ||= (@w*2) + (@h*2)
  end
end
