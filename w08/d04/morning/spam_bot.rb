require 'httparty'
require 'pry'

def find_emails(url)
  responce = HTTParty.get(url)
  emailRegex = /\w+@\w+.\w+/
  addresses = responce.scan(emailRegex)
  puts addresses
end

binding.pry

# hhttp://www.gnu.org/software/mailman/mailman-admin/node4.html
