require 'spec_helper'

describe PagesController do
  render_views
  
  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end

    it "should have the right title" do
      get 'home'
      response.should have_selector("title",
      :content => "The Byte Stuff | Home")
    end
    
    it "should have a non-blank body" do
      get 'home'
      response.body.should_not =~ /<body>\s*<\/body>/
    end
  end

  describe "GET 'contact'" do
    it "should be successful" do
      get 'contact'
      response.should be_success
    end

    it "should have the right title" do
      get 'contact'
      response.should have_selector("title",
      :content => "The Byte Stuff | Contact")
    end
  end

  describe "GET 'product'" do
    it "should be successful" do
      get 'product'
      response.should be_success
    end

    it "should have the right title" do
      get 'product'
      response.should have_selector("title",
      :content => "The Byte Stuff | Product")
    end
  end

end
