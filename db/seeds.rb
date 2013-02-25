# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.delete_all

admin = User.create user_name:'admin', email: 'admin@test.org', password: 'admin@test'
admin.add_role :admin

user = User.create user_name:'Tester', email: 'testDude@test.de', password: 'test123'
user.add_role :user
