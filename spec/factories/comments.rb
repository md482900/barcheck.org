# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :comment do
    body "MyText"
    user_name "MyString"
    bar_name "MyString"
    bar_id 1
  end
end
