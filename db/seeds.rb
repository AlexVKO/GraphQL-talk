# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
new_user = {
  name: "Ale",
  address: "Av paulista",
  phone: "(11)95976-7171",
  email: "ale@alexvko.com",
  password: '12341234'
}

User.create new_user
