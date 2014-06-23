# Implement the following endpoints:

# [GET] list of users
# [GET] list of posts for a user
# [GET] list of comments for a post by a user
# require 'awesome_print'


get '/' do
  erb :index
end

get '/users' do
  content_type :json
  @users = User.all
  @users_hash = {}
	@users.each do |user|
		@users_hash["#{user.id}"] = {
			name: user.name,
			username: user.username,
			email: user.email,
			bio: user.bio
		}
	end
	p @users_hash.to_json

end

get '/users/:user_id/posts' do
	@user_post = Post.where(user_id: 1)
	@post_hash = {}
	@user_post.each do |post|
		@post_hash["#{post.id}"] = {
			title: post.title,
			body: post.body,
			user_id: post.user_id
		}
	end
	@post_hash.to_json
end

get 'posts/:post_id/:user_id' do
	if params[:user_id]

		@post_comments = Comment.where(post_id: params[:post_id], user_id: params[:user_id])
		@post_comments.to_json
	else
		# 404
		return "im so happy i could pop a purple twinky pumpernickle pomegranite punch bowl..."
	end
end








	# - /giraffes/:id/hats?color=red&size=xl
# @users_hash["username"] = user.username
		# @users_hash["bio"] = user.bio
		# @users_hash["id"] = user.id
		# @users_hash["name"] = user.name
		# @users_hash["email"] = user.email


