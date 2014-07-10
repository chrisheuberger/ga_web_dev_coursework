use Rack::Session::Cookie
use OmniAuth::Strategies::Developer
use OmniAuth::Builder do
  provider :instagram, ENV['24e81497c02f48e7a1c605a48a8851f3'], ENV['a446e41fa5b74e1e9fbdc7541a2fe58a']
end

# redirect 'https://api.instagram.com/v1/media/popular?client_id=24e81497c02f48e7a1c605a48a8851f3'

def instagram_data
  all_data = HTTParty.get('https://api.instagram.com/v1/media/popular?client_id=24e81497c02f48e7a1c605a48a8851f3')
  test = all_data.keys
end
