class Book < ActiveRecord::Base
  has_many :WordCounts
end
