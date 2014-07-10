class Site < ActiveRecord::Base
  has_many :appearances
  has_many :people, through: :appearances
end
