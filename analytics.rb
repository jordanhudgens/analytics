require 'sinatra'

class SiteCall
  def initialize
    "testing it out"
  end
end

get '/' do
  "Welcome to the homepage"
end

get '/test' do
  SiteCall.new
end
