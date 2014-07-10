class Celebrity < ActiveRecord::Base
  has_many :selfies
  has_many :comments
end
