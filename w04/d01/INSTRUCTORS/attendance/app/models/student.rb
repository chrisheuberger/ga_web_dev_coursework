class Student < ActiveRecord::Base
  has_many :check_ins

  def check_in!
    CheckIn.create student: self, time: Time.now
  end
end
