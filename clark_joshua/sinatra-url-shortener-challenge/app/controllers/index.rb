=begin

Need the following to be created

route to redirect to a short url?
route for user to logout
=end

# route for user to login
#index_page
get '/' do
  erb :index
end

# route to create a user
get '/users/new' do
  erb :new_users
end

# taking new user info in the goto index page
post '/users/new' do
  # add new user info to database here
  redirect '/'
end

# route for user long and short urls landing page
get '/users' do
  #stuff
  erb :users
end

# this route is when you click the submit button
# for user name and password
post '/users' do
  # create the user right here in the database
  erb :users
end

# route to input a long url
get '/url/new' do
  erb :url_in
end

# route to post a short url
post '/url' do
  erb :url_out
end

