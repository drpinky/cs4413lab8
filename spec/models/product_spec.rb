require 'spec_helper'

describe Product do
  
  before(:each) do
    @attr = { :name => "Example Product", :price => "0.00", :hours => "24", :minutes => "00", :description => "Example Description"}
  end
  
  it "should create a new instance given valid attributes" do
    Product.create!(@attr)
  end
  
  it "should require a name" do
    no_name_product = Product.new(@attr.merge(:name => ""))
    no_name_product.should_not be_valid
  end
  
  it "should have a price"
  
  it "should have hours"
  
  it "should have minutes"
  
  it "should have a description"
end
