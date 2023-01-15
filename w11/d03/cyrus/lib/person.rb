class Person

  attr_reader :last, :first, :gender, :dob, :color

  def initialize(last, first, gender, dob, color)
    @last = last
    @first = first
    @gender = gender
    @dob = dob
    @color = color
  end

  def information
    "#{@last} #{first} #{gender} #{dob} #{color}"
  end

end
