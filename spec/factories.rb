#coding:utf-8

FactoryGirl.define do
  
  factory :product do |t|
  	t.name "Ray Ban"
    t.description "for summer"
    t.price 320.0
    t.association :categorie
  end

	factory :categorie do |t|
  	t.name "beach"
  end

end