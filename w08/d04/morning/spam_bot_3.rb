require 'httparty'

def spam_bot(site)
  regex = /\w*@\w*.\w{2,3}/
  text = HTTParty.get(site)
  text.scan(regex)
end
