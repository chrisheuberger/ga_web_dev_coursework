class Dog < ActiveRecord::Base

  def to_s
    "#{self.name} the #{self.breed}"
  end
end
