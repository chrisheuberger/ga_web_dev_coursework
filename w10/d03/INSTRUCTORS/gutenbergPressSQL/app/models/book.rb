class Book < ActiveRecord::Base
  has_many :word_counts
end
