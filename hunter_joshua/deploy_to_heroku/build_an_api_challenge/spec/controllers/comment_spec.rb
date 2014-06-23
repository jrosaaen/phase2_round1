require 'spec_helper'

describe 'CommentController' do

  describe "GET '/users/:id/posts/:post_id/comments'" do

    before(:each) do
      get '/users/1/posts/1/comments'
    end

    it 'provides all comments by a user as a JSON string' do
      expect(last_response.content_type).to include("json")
    end

    it 'responds with comments from a specific user and post' do
      expect(JSON.parse(last_response.body)[0]["comment"]["user_id"]).to eq(1)
    end

    it 'responds with comments from a specific user and post' do
      expect(JSON.parse(last_response.body).last["comment"]["user_id"]).to eq(1)
    end

    it 'responds with comments from a specific user and post' do
      expect(JSON.parse(last_response.body).last["comment"]["post_id"]).to eq(1)
    end

  end

  describe "POST '/users/:id/posts/:post_id/comments'" do

    it 'creates a new comment for a user on a post if valid params' do
      expect {
        post '/users/1/posts/1/comments', :body => "hey this is a post"
      }.to change { User.find(1).comments.count }.by(1)
    end

    it 'does not create a new comment for a user on a post if params not valid' do
      expect {
        post '/users/1/posts/1/comments', :wassabe => "hey this is a post"
      }.to_not change { User.find(1).comments.count }
    end

  end
end

