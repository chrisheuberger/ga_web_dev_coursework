require 'bundler/setup'
Bundler.require

get '/stock/:ticker' do
  ticker = params[:ticker]
  data = YahooFinance.historical_quotes(ticker, Time::now-(24*60*60*10), Time::now)
  data[0].open
end
