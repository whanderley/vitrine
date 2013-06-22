#coding:utf-8

require 'spec_helper'

describe Categorie do
 
  it "is valid with all attributes" do
	FactoryGirl.create(:categorie).should be_valid
  end

  it "is invalid without name" do
    FactoryGirl.build(:categorie, name: nil).should_not be_valid
  end

  it "return all products" do
  	categorie = FactoryGirl.create(:categorie)
  	product1 = FactoryGirl.create(:product, categorie: categorie)
  	product2 = FactoryGirl.create(:product, categorie: categorie)
  	product3 = FactoryGirl.create(:product, categorie: categorie)
  	categorie.products.should == [product1, product2, product3]
  end

end