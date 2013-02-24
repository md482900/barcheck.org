# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :comment do
    bar_id 1
    user_name 1
    text "MyText"
  end
end
