database_url = ENV['DATABASE_URL'] || 'postgres://localhost/ribbit_app'
ActiveRecord::Base.establish_connection(database_url)
