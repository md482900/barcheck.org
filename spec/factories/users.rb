# Read about factories at https://github.com/thoughtbot/factory_girl
require "spec_helper.rb"
FactoryGirl.define do
	factory :user1, class: 'User' do
		id 1
		email 'tester@tester.de'
		user_name 'tester'
		password '1234567'
		password_confirmation '1234567'
	end
end

FactoryGirl.define do
	factory :user2, class: 'User' do
		id 2
		email 'dummy@tester.de'
		user_name 'dummy'
		password '1234567'
		password_confirmation '1234567'
	end
end
FactoryGirl.define do
	factory :user3, class: 'User' do
		id 3
		email 'test@dude.de'
		user_name 'testdude'
		password '1234567'
		password_confirmation '1234567'
	end
end
FactoryGirl.define do
	factory :user4, class: 'User' do
		id 4
		email 'dieter@tester.de'
		user_name 'dieter'
		password '1234567'
		password_confirmation '1234567'
	end
end