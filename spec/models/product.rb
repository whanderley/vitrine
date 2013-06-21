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

end