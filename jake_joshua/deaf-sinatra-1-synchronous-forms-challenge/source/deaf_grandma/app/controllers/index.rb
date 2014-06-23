get '/' do
  @grandma = params[:grandma]
  # Look in app/views/index.erb
  erb :index
end

post '/grandma' do
  # "#{params["user_input"]}"
  redirect "/?grandma=#{params["user_input"]}"
end

# get '/grandma' do
# end
