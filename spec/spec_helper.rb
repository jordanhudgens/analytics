require 'rubygems'

# this forces the environment to 'test'
ENV['RACK_ENV'] = 'test'

require File.join(File.dirname(__FILE__), '..', 'analytics.rb')

require 'rubygems'
require 'sinatra'
require 'rspec'
require 'rack/test'
require 'capybara'
require 'capybara/dsl'

Capybara.app = Sinatra::Application # makes capybara work

RSpec.configure do |conf|
  # set test environments
  set :environment, :test
  set :run, false
  set :raise_errors, true
  set :logging, false

  conf.include Rack::Test::Methods
  conf.include Capybara::DSL

  def app
    @app ||= Sinatra::Application
  end
end

