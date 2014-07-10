class Proto < ActiveRecord::Base
  validates :name, uniqueness: true
  zodiac_reader :birthday
end
