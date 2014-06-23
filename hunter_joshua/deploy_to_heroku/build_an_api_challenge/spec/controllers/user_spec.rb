require 'spec_helper'

describe 'UserController' do

  describe "GET '/'" do

    it 'loads homepage' do
      get '/'
      expect(last_response).to be_ok
    end

  end

  describe "GET '/users'" do

    before(:each) do
      get '/users'
    end

    it 'provides all users as a JSON string' do
      expect(last_response.content_type).to include("json")
    end

    it 'all users have the key "user"' do
      expect(JSON.parse(last_response.body)[0]).to have_key("user")
    end

  end

end