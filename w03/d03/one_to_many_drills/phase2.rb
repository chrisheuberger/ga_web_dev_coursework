require 'pg'
require 'active_record'

farm_db = "farm"
ActiveRecord::Base.establish_connection("postgres://localhost/#{farm_db}")

class Cow < ActiveRecord::Base
  belongs_to :user
end

class User < ActiveRecord::Base
  has_many :cows
end

my_user = User.create({username: 'Old MacDonald'})
my_cow = Cow.create({name: 'Bessy'})
my_user.cows << my_caw

puts "User:   " + my_user.username
puts "Cow:    " + my_user.cows.first.message
