get '/' do
  # Root
  erb :index
end

# create new catagories
get '/create_categories' do
  erb :create_categories
end

post '/create_categories' do
  puts '*'*80
  p params[:user_input]
  Category.create({:title => params[:user_input]})
  redirect "/"
end

get '/categories' do
  "Hello World"
end

get "/categories/:category_id" do
  # puts '*'*80
  # p params
  @category = Category.find(params[:category_id])
  erb :category_template
end

# get '/create_categories' do
#   @title = catagories.param[:title]
# end

# get "/posts/:category_id" do
#   @post = Post.find(params[:category_id])
#     erb :category_template
# end

# get "/categories/:title" do
#   @category = Category.find_by(title: params[:title])
#   erb :category_template
# end
#/catagories/1

# get '/posts' do
#     @category_id = params[:category_id]
#     @title = params[:title]
#     @description = params[:description]
#     @price = params[:price]
#     @email = params[:email]
#     @user = params[:user]
#     @edit_key = params[:edit_key]
# end

