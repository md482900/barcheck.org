# Read about factories at https://github.com/thoughtbot/factory_girl
require "spec_helper.rb"
FactoryGirl.define do
  factory :comment1, class: 'Comment' do
    bar_id 1
    user_name 'tester'
    text "MyText"
  end
 
 factory :comment2, class: 'Comment'do
    bar_id 2
    user_name 'dummy'
    text "MyText"
  end

   factory :comment3, class: 'Comment' do
    bar_id 1
    user_name 'testdude'
    text "MyText"
  end
  factory :comment4, class: 'Comment' do
    bar_id 2
    user_name 'dieter'
    text "MyText"
  end


end