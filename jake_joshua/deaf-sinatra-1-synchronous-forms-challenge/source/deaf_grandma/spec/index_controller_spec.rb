require 'spec_helper'

describe "IndexController (this is a skeleton controller test!)" do

  describe 'get grandma' do
    # Here is a sample GET test for you to study
    it "should render grandma's response" do
      get "/", { grandma: 'HI' }
      # p last_response
      expect(last_response.body).to include("NOT SINCE 1979")
    end
    # Can you think of more meaningful GET tests to write?
  end
  describe 'post' do
    # Here is a sample POST test for you to study - modify for your code.
    it "should return a response for uppercase" do
      post '/grandma', { user_input: "HI GRANDMA" }
      p last_response
      expect(last_response.location).to include("HI GRANDMA")
    end

    it 'should return a response for lowercase' do
     # pending
      # Write your POST test here
      get "/", { grandma: 'whats crackin' }
      # p last_response
      expect(last_response.body).to include("SPEAK UP HONEY")
    end

  end
end
