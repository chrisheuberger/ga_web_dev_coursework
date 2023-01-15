

# ------------------------------------------------------

# raw sql hates double qoutes

# ------------------------------------------------------

# String interpolation only works with double quotes
name = 'Lichard'

"Does allow string interpolation here, #{ name }"
'Does NOT allow string interpolation here, #{ name }'

# ------------------------------------------------------

# missing initial / in route

get '/users/:id' do
  # This should work
end

get 'users/:id' do
  # Will not work
end

# ------------------------------------------------------

erb :'users/show' # MEANS show.erb must be in a users directory within views

# ------------------------------------------------------

"tiny ...typos  :)"

# ------------------------------------------------------

# hidden field for _method... put and delete
<input type='hidden' name='_method' value='delete'>

# ------------------------------------------------------

# route order
get '/users/new' do   # must be above  (it is more specific)
end

get '/users/:id' do   # must be below (it is less specific)
end
