# Read about factories at https://github.com/thoughtbot/factory_girl
FactoryGirl.define do
  factory :comment1, class: 'Comment' do
    bar_id 1
    user_name 'tester'
    text "MyText"
  end
end
