# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
@user = User.new
@user.name = 'Kazuki Sando'
@user.username = 'mafu'
@user.location = 'Saitama, Japan'
@user.about = 'Hello'
@user.save

@user = User.new
@user.name = 'Rei Amuro'
@user.username = 'gundam'
@user.location = 'side7, Spece'
@user.about = 'I\'m gundam. OK?'
@user.save

