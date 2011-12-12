require 'spec_helper'

describe Product do
  before(:each) do
    @attr = { :name => "Example Product", :price => "0.00", :amount => "2", :hours => "24", :minutes => "00", :description => "Example Description"}
  end
  
  it "should create a new instance given valid attributes" do
    Product.create!(@attr)
  end
  
  it "should require a name" do
    no_name_product = Product.new(@attr.merge(:name => ""))
    no_name_product.should_not be_valid
  end
  
  it "should have a price" do
    no_price_product = Product.new(@attr.merge(:price=> ""))
    no_price_product.should_not be_valid
  end
  
  it "should have an amount" do
    no_amount_product = Product.new(@attr.merge(:amount=> ""))
    no_amount_product.should_not be_valid
  end
  
  it "should have hours" do
    no_hours_product = Product.new(@attr.merge(:hours=> ""))
    no_hours_product.should_not be_valid
  end
  
  it "should have minutes" do
    no_minutes_product = Product.new(@attr.merge(:minutes=> ""))
    no_minutes_product.should_not be_valid
  end
  
  it "should have a description" do
    no_description_product = Product.new(@attr.merge(:description=> ""))
    no_description_product.should_not be_valid
  end
  
  it "should reject names that are too long" do
    long_name = "a" * 51
    long_name_product = Product.new(@attr.merge(:name => long_name))
    long_name_product.should_not be_valid
  end
  
  it "should reject duplicate names" do
    Product.create!(@attr)
    product_with_duplicate_name = Product.new(@attr)
    product_with_duplicate_name.should_not be_valid
  end
  
  it "should reject names identical up to case" do
    upcased_name = @attr[:name].upcase
    Product.create!(@attr.merge(:name => upcased_name))
    product_with_duplicate_name = Product.new(@attr)
    product_with_duplicate_name.should_not be_valid
  end
end
