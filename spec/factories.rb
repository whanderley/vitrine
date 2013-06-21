#coding:utf-8

FactoryGirl.define do
  
  factory :product do |t|
  	t.name "Ray Ban"
    t.description "oculos de sol"
    t.price "320"
  end

	factory :categorie do |t|
  	t.name "sol"
  end

end