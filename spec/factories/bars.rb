# Read about factories at https://github.com/thoughtbot/factory_girl
require "spec_helper.rb"
FactoryGirl.define do
  factory :bar1 ,class: 'Bar' do
  	id 1
    name "A"
    description "MyText"
    address "http://maps.google.de/"
    picture "MyString"
  end
  factory :bar2 , class: 'Bar' do
  	id 2
    name "B"
    description "MyText"
    address "http://maps.google.de/"
    picture "MyString"
  end

end