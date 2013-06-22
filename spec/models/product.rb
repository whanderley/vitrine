#coding:utf-8

require 'spec_helper'

describe Product do
 
  it "is valid with all attributes" do
		FactoryGirl.create(:product).should be_valid
  end

  it "is invalid without name" do
    FactoryGirl.build(:product, name: nil).should_not be_valid
  end

  it "is invalid without description" do
    FactoryGirl.build(:product, description: nil).should_not be_valid
  end

  it "is invalid without price" do
    FactoryGirl.build(:product, price: nil).should_not be_valid
  end

  it "is invalid without categorie" do
    FactoryGirl.build(:product, categorie: nil).should_not be_valid
  end

  it "return the category name when categorie_name is invoked" do
    categorie = FactoryGirl.build(:categorie, name: 'black')
    product = FactoryGirl.build(:product, categorie: categorie)
    product.categorie_name.should == "black"
  end

end