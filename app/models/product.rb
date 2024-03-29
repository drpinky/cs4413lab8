class Product < ActiveRecord::Base
  attr_accessible :name, :price, :hours, :minutes, :description, :amount
  
  
  validates :name, :presence => true,
                   :length => { :maximum => 50},
                   :uniqueness => { :case_sensitive => false }
  validates :price, :presence => true
  validates :amount, :presence => true
  validates :hours, :presence => true
  validates :minutes, :presence => true
  validates :description, :presence => true
end
