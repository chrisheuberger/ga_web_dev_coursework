class Station < ActiveRecord::Base
  has_and_belongs_to_many :lines
  validates :address, uniqueness: true
end
