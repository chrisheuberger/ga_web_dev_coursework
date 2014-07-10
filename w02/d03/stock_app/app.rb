# encoding: utf-8
require 'bundler/setup'
Bundler.require

get '/' do
  erb :index
end

get '/stock/:ticker' do
  ticker = params[:ticker]
  data = YahooFinance.historical_quotes(ticker, Time::now-(24*60*60*10), Time::now)
  @stock_info = data[0].open
  erb :show
end

post '/stock' do
  symbol = params[:symbol]
  redirect "/stock/#{symbol}"
end

get '/stock' do
  @tick = params[:tick]
  erb :show
end
