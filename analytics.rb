require 'sinatra'
require_relative 'database'

get '/' do
  "Welcome to the homepage"
end

post '/request' do
  Database.new.insert_request(params[:token], params[:params])
  ''
end
