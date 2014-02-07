require 'spec_helper'

describe "my first test" do
  subject { page }

  describe "Home Page" do
    before { visit '/' }

    it { should have_content('Welcome to the homepage') }
  end
end

describe "API" do
  before do
    Database.new.clear
  end

  it "should return nothing" do
    post "/request", params: {param1: 'foo', param2: 'bar'}
    last_response.body.should == ''
  end

  it "should have the data stored in the database" do
    post "/request", token: 'alice', params: {param1: 'foo', param2: 'bar'}
    Database.new.requests('alice').should include({"param1" => 'foo', "param2" => 'bar'})
  end

  it "should store request under given account" do
    post "/request", token: 'bob', params: {event: 'clicked-sign-up'}
    post "/request", token: 'alice', params: {event: 'visited-home-page'}
    Database.new.requests('bob').should == [{"event" => 'clicked-sign-up'}]
    Database.new.requests('alice').should == [{"event" => 'visited-home-page'}]
  end

end
