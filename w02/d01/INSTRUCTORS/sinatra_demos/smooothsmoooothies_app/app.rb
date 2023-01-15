require 'sinatra'
require 'sinatra/reloader'


def random_smoothie_a

  smoothie_ingredients = {
    'flax seeds' => '1 tbsp',
    'chia seeds' => '1 tbsp',
    'coconut flakes' => '1 tbsp'
  }

  ingredient_keys = smoothie_ingredients.keys.sample(3)
  ingredient_keys.map {|ingredient| "#{ingredient}: #{smoothie_ingredients[ingredient]}"}

end

# Nessa's Random Smoothie Generator!!!!
def random_smoothie_b(num_of_ingredients)
  smoothie_ingredients = {
    'flax seeds' => '1 tbsp',
    'chia seeds' => '1 tbsp',
    'coconut flakes' => '1 tbsp'
  }

  ingredient_array = smoothie_ingredients.map {|ingredient, measure| "#{ingredient}: #{measure}"}
  ingredient_array.sample(num_of_ingredients)
end

get '/' do
  num_of_ingredients = 3
  "<h2>Today's Smoothie: </h2>" + random_smoothie_b(num_of_ingredients).join('<br>')
end

get '/smoothie/:num_of_ingredients' do
  num_of_ingredients = params[:num_of_ingredients].to_i
  "<h2>Today's Smoothie: </h2>" + random_smoothie_b(num_of_ingredients).join('<br>')
end
