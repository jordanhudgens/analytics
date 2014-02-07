require_relative '../database'

describe Database do
  it "should be initialized with no arguments" do
    expect { Database.new }.to_not raise_error
  end

  it "should be able to insert requests" do
    db = Database.new
    db.insert_request('token', {})
    db.requests('token').should include({})
  end
end
