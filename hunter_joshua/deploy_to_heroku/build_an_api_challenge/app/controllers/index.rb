get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/users' do
  content_type :json
  User.all.to_json
end

get '/posts' do
  content_type :json
  Post.all.to_json
end

get '/users/:id/posts' do
  content_type :json
  User.find(params[:id]).posts.to_json
end

post '/users/:id/posts' do
  user = User.find(params[:id])
  new_post = Post.create(title: params[:title], body: params[:body])
  user.posts << new_post

  content_type :json
  new_post.to_json

end

get '/users/:id/posts/:post_id/comments' do
  content_type :json
  temp = User.find(params[:id]).comments.where('post_id = ?', params[:post_id]).to_json
end

post '/users/:id/posts/:post_id/comments' do
  user = User.find(params[:id])
  new_comment = Comment.create(body: params[:body], post_id: params[:post_id])
  user.comments << new_comment

  content_type :json
  new_comment.to_json
end