require 'sinatra'
require 'data_mapper'
require 'dm-core'
require 'dm-timestamps'

DataMapper::setup(:default, 'sqlite3://#{Dir.pwd}/analytics.rb')

class Link
    include DataMapper::Resource

    property :id, Serial
    property :link, String
    property :created_at, DateTime
    property :updated_at, DateTime

end


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

get '/' do
    @title = "Homepage"
    erb :welcome
end

post '/request' do
  Database.new.insert_request(params)
  ''
end

get '/click/:id' do
end
