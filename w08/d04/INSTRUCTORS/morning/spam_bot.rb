require 'httparty'
require 'pry'

def find_emails(url)
  responce = HTTParty.get(url)
  responce.scan(/\w+@\w+/)
end

binding.pry