# require "rails_helper"



require 'spec_helper'

describe "index" do
  it "does indexy things" do
    get '/'
    expect(last_response.body).to include("/users")
  end

end
describe "users" do
  it "returns proper status code on load" do
    get '/users'
    puts last_response.status
    expect(last_response.status).to eq(200)
  end
  it "displays some users" do
    User.create(username: "Bootcoder", name: "Hunter", email: "Bootcoder@gmail.com", bio: "0 fucks given")
    @users = User.all
    get'/users'
    expect(last_response.body).to include("username")
  end
end

describe "user posts" do
  it "returns posts from user id" do

    User.create(username: "Bootcoder", name: "Hunter", email: "Bootcoder@gmail.com", bio: "0 fucks given")
    @users = User.all
    Post.create(title: "JibJabJunk", body: "JunkThe crazy ass funk", user_id: 1)

    p "userids"
    p @users.first.id

    get "/users/#{@users.first.id}/posts"
    p "i can haz code burgerz"
    p last_response.body
    expect(last_response.body).to include("name")
  end
end

