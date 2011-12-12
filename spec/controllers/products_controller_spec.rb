require 'spec_helper'

describe ProductsController do
  render views
  
  describe "GET 'new'" do
    
    it "should be successful" do
      get '/new'
      response.should be_success
    end
    
    it "should have the right title" do
      get '/new'
      response.should have_selector("title", :content => "Buy Now!")
    end
  end
  
  describe "POST 'create'" do
    
    describe "failure" do
      
      before(:each) do
        @attr = ( :amount => 0)
      end
      
      it "should render the 'new' page" do
        post :create, :amount => @attr
        response.should render_template('new')
      end
    end
  
  describe "success" do
    before(:each) do
      @attr = ( :amount => 1)
    end
    
    it "should verify enough inventory is available"
    
    it "should redirect to the confirmation page" do
      post: create, :user => @attr
      response.should redirect_to('/confirm')
    end
   end
end
end