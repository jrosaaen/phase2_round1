require 'faraday'

get '/' do
  # Look in app/views/index.erb
  erb :index
end

# linkedin.om/pub/firstname-lastname
get '/auth' do
  # conn = Faraday.new(:url => '??') do |c|
  #   c.use Faraday::Request::UrlEncoded
  #   c.use Faraday::Response::Logger
  #   c.use Faraday::Adapter::NetHttp
  # end
  # response = conn.get '??'
  # response.body
  # conn.post '/nigiri', {??}
  p "you are here"
  erb :auth
end

get '/token' do
  p "fuck"
end