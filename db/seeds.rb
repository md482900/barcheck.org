# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.delete_all

Category.create(:name => 'Ambience', vote: nil )
Category.create(:name => 'Service', vote: nil )
Category.create(:name => 'Price', vote: nil)

pass = SecureRandom.hex(5)
admin = User.create email: 'm4nhthangdo@gmail.com', password: 'manni@admin'
admin.add_role :admin
