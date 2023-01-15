class Dog < ActiveRecord::Base
  has_many :walks
  has_many :dog_walkers, through: :walks
end
