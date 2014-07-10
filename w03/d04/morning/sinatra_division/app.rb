require 'bundler'
Bundler.require

def find_multiples(x, arr)
  arr.select{|num| num % x == 0}
end

get '/:num/:sample_size' do
  num = params[:sample_size].to_i
  arr = (1..num).to_a
  @arr = find_multiples(params[:num].to_i, arr)
  erb :index
end


