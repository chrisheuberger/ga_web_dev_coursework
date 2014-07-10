class Person < ActiveRecord::Base
  has_many :appearances
  has_many :sites, -> {uniq} ,through: :appearances
end
