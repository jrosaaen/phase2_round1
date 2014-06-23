require 'spec_helper'

describe 'PostController' do

  describe "GET '/posts'" do

    before(:each) do
      get '/posts'
    end

    it 'provides all posts as a JSON string' do
      expect(last_response.content_type).to include("json")
    end

    it 'all posts have the key "post"' do
      expect(JSON.parse(last_response.body)[0]).to have_key("post")
    end

  end

  describe "GET '/users/:id/posts'" do

    before(:each) do
      get '/users/1/posts'
    end

    it 'provides all posts as a JSON string' do
      expect(last_response.content_type).to include("json")
    end

    it 'responds only with posts for the specified user' do
      expect(JSON.parse(last_response.body)[0]["post"]["user_id"]).to eq(1)
    end

  end

  describe "POST '/users/:id/posts'" do
    it 'creates a new post for a user if valid params' do
      my_params = { :title => "the title", :body => "something" }
      expect {
        post '/users/1/posts', my_params
      }.to change { User.find(1).posts.count }.by(1)
    end

    it 'does not create a new post for a user if params not valid' do
      my_params = { :chicken => "the title", :meat => "something" }
      expect {
        post '/users/1/posts', my_params
      }.to_not change { User.find(1).posts.count }
    end

  end

end