# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Danceclass.create(title: 'Ballroom', description: 'Ballroom classes for all', price:  20, image_url: 'ballroom.jpg', category: 'weekly')
Danceclass.create(title: 'Traditional', description: 'irish dancing', price:  35, image_url: 'trad.jpg', category: 'weekly')
Danceclass.create(title: 'Latin', description: 'time to dance', price:  50, image_url: 'latin.jpg', category: 'weekly')
Danceclass.create(title: 'disco', description: 'disco dancing', price:  40, image_url: 'disco.jpg', category: 'weekly')
Danceclass.create(title: 'disco', description: 'disco dancing', price:  40, image_url: 'disco.jpg', category: 'weekly')
Danceclass.create(title: 'Latin', description: 'time to dance', price:  50, image_url: 'latin.jpg', category: 'weekly')
Danceclass.create(title: 'Ballroom', description: 'Ballroom classes for all', price:  20, image_url: 'ballroom.jpg', category: 'weekly')
Danceclass.create(title: 'Traditional', description: 'irish dancing', price:  35, image_url: 'trad.jpg', category: 'weekly')
user = User.new
user.email = 'user@user.com'
user.password = 'password'
user.password_confirmation = 'password'
user.save!

user = User.new
user.email = 'admin@admin.com'
user.password = 'password'
user.password_confirmation = 'password'
user.admin = true
user.save!
