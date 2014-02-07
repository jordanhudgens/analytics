require 'sinatra'
<<<<<<< HEAD


# set utf-8 for outgoing
before do
    headers "Content-Type" => "text/html; charset=utf-8"
end

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
=======
require_relative 'database'
>>>>>>> 427a3b87ff62de950b5738cfdb0da5397a4e1fef

get '/' do
    @title = "Homepage"
    erb :welcome
end

post '/request' do
  Database.new.insert_request(params[:token], params[:params])
  ''
end

get '/click/:id' do
end
