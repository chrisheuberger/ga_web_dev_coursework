
# AFTER sql has been run in pqsl!!

require 'pg'
require 'active_record'

# Connect to database
database_name = "caws_and_users_db"
ActiveRecord::Base.establish_connection("postgres://localhost/#{database_name}")


# Define your models
class Caw < ActiveRecord::Base
  belongs_to :user
end

class User < ActiveRecord::Base
  has_many :caws
end


# Test out the association methods!!
my_user = User.create({username: 'Lichard'})
my_caw = Caw.create({message: 'Working on The Great WDisby'})
my_user.caws << my_caw

# Did it work?
puts "User:   " + my_user.username
puts "Caw:    " + my_user.caws.first.message
