class Planet < ActiveRecord::Base
  has_many :moons
  def to_s
    if self.life == true
      x = "with life"
    else
      x = "without life"
    end
    "#{self.name} is a planet with #{self.moons.length} moon(s), #{x}"
  end
end
