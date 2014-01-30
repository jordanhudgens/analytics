require 'sinatra'

class Database
  def initialize
    @@data ||= []
  end

  def insert_request(params)
    @@data << params
  end

  def requests
    @@data
  end
end

get '/' do
  "Welcome to the homepage"
end

post '/request' do
  Database.new.insert_request(params)
  ''
end
