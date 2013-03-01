require "spec_helper.rb"
FactoryGirl.define do
  factory :bar_image1, class: 'Bar_Image' do
    caption "MyString"
    bar_id 1
  end


  factory :bar_image2,class: 'Bar_Image' do
    caption "MyString"
    bar_id 1
  end


  factory :bar_image3,class: 'Bar_Image' do
    caption "MyString"
    bar_id 2
  end

  factory :bar_image4,class: 'Bar_Image' do
    caption "MyString"
    bar_id 2
  end
end