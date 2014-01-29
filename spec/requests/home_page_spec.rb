require 'spec_helper'

describe "my first test" do
  subject { page }

  describe "Home Page" do
    before { visit '/' }
    it { should have_content('Welcome to the homepage') }
  end
end

describe "testing classes" do
  describe "first test class" do
    before { visit '/test'}
    it { should have_content('testing it out') }
  end
end
