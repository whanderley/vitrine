class Product < ActiveRecord::Base
  attr_accessible :description, :name, :price
  validates :description, :name, :price, :presence => true
end
