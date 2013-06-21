#coding:utf-8

require 'spec_helper'

describe Categorie do
 
  it "is valid with all attributes" do
		FactoryGirl.create(:categorie).should be_valid
  end

  it "is invalid without name" do
    FactoryGirl.build(:categorie, name: nil).should_not be_valid
  end

end