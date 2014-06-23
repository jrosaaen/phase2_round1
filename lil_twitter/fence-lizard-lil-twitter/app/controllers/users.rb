get "/user/dashboard/:id" do
  @user = User.find(params[:id])
  @tweets = @user.tweets
  @all_tweets = Tweet.all
  @messages = Message.all
  @all_users = User.all
  @messages = Message.where(receiver_id: session[:id])
  erb :dashboard
end

post "/user/logout" do
  session[:id] = nil
  redirect '/'
end

get "/user/login" do
  erb :login
end

post "/user/login" do

    if User.find_by(username: params[:username]) != nil && user_login_password_match?(params)
      session[:id] = User.find_by(username: params[:username]).id
      redirect "/user/dashboard/#{session[:id]}"
    else
      redirect '/user/login'
    end
end

get "/user/create" do
  erb :create_account
end

post "/user/create" do
  if password_match?(params)
    @user = User.create(username: params[:username], password: params[:password])
    session[:id] = @user.id
    redirect "/user/dashboard/#{session[:id]}"
  else
    redirect '/user/create'
  end
end

get "/user/:id/profile" do
  @user = User.find(params[:id])
  erb :profile
end

put "/user/:id/add" do
  @user = User.find(params[:id])
  @user.followers << User.find(session[:id])
  erb :profile
end

get "/user/:id1/:id2/message" do
  @id1 = params[:id1]
  @id2 = params[:id2]
  erb :message
end

post "/user/:id1/:id2/message" do
  Message.create(sender_id: params[:id1], receiver_id: params[:id2], message: params[:message])
  @sender = User.find(session[:id])
  @user = User.find(session[:id])
  @all_users = User.all
  @messages = Message.all
  p @messages
  erb :dashboard
end