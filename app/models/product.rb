class Product < ActiveRecord::Base
  attr_accessible :name, :price, :hours, :minutes, :description
end
