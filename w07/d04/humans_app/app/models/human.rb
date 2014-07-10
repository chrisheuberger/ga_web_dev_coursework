class Human < ActiveRecord::Base

  def to_s
    "#{self.name} (#{self.email})"
  end

end
