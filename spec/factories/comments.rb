# Read about factories at https://github.com/thoughtbot/factory_girl
FactoryGirl.define do
  factory :com1, class: 'Comment' do
    bar_id 1
    user_name 'tester'
    text "MyText"
  end
 
 factory :comm2, class: 'Comment'do
    bar_id 2
    user_name 'dummy'
    text "MyText"
  end

   factory :com3, class: 'Comment' do
    bar_id 1
    user_name 'testdude'
    text "MyText"
  end
  factory :com4, class: 'Comment' do
    bar_id 2
    user_name 'dieter'
    text "MyText"
  end


end
