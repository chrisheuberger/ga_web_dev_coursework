require 'bundler/setup'
Bundler.require

get '/' do
  erb :root
end

post '/submit' do
  query = params.map do |key, value|
    "#{key}=#{value}"
  end.join("&")
  redirect "/success?#{query}"
end

get '/success' do
  @arbitrary_internal_name = params["field_name_from_form"]
  erb :success
end
