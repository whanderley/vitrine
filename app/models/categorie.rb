class Categorie < ActiveRecord::Base
  attr_accessible :name
  validates :name, :presence => true
  has_many :products
  attr_accessor :name
  
end
