require 'spec_helper'

describe "my first test" do
  subject { page }

  describe "Home Page" do
    before { visit '/' }

    it { should have_content('Welcome to the homepage') }
  end
end

describe "API" do
  it "should save the request to the database" do
    Database.any_instance.should_receive(:insert_request).
      with("param1" => 'foo', "param2" => 'bar')
    post "/request", param1: 'foo', param2: 'bar'
  end

  it "should return nothing" do
    post "/request", param1: 'foo', param2: 'bar'
    last_response.body.should == ''
  end

  it "should have the data stored in the database" do
    post "/request", param1: 'foo', param2: 'bar'
    Database.new.requests.should include({"param1" => 'foo', "param2" => 'bar'})
  end
end

describe "Ajax call" do
  it "gets a value returned when a link is clicked" do

  end

end
