class Product < ActiveRecord::Base
  attr_accessible :description, :name, :price, :categorie
  validates :description, :name, :price, :categorie,  :presence => true
  belongs_to :categorie

  def categorie_name
  	self.categorie.name
  end

end
