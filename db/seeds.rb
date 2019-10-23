# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Seed information for the Stock Table.
Stock.destroy_all
Stock.create!([
  {
    make: "Chrysler",
    model: "300",
    color: "Red",
    year: 2019,
    dealerprice: 35000,
    saleprice: 45000,
    profit: 10000,
    inventorystatus: "available",
    url: "1.jpeg"
  },
  {
    make: "Chrysler",
    model: "300",
    color: "Green",
    year: 2019,
    dealerprice: 35000,
    saleprice: 45000,
    profit: 10000,
    inventorystatus: "available",
    url: "2.jpeg"
  },
  {
    make: "Chrysler",
    model: "Pacifica",
    color: "Red",
    year: 2019,
    dealerprice: 35000,
    saleprice: 45000,
    profit: 10000,
    inventorystatus: "available",
    url: "1.jpeg"
  },
  {
    make: "Jeep",
    model: "Gladiator Truck",
    color: "Yellow",
    year: 2019,
    dealerprice: 35000,
    saleprice: 45000,
    profit: 10000,
    inventorystatus: "available",
    url: "1.jpeg"
  },
  {
    make: "Chrysler",
    model: "Pacifica Hybrid Van",
    color: "Red",
    year: 2019,
    dealerprice: 35000,
    saleprice: 45000,
    profit: 10000,
    inventorystatus: "available",
    url: "1.jpeg"
  }
])

p "Created #{Stock.count} stocks."

#Seed information for the users table.
User.destroy_all
user = User.new(
      :name                  => "admin",
      :email                 => "admin@admin.com",
      :username              => "admin",
      :password              => "12345678",
      :password_confirmation => "12345678",
      :admin                 => "true"
  )
user.save!

user = User.new(
        :name                  => "user",
        :email                 => "user@user.com",
        :username              => "user",
        :password              => "12345678",
        :password_confirmation => "12345678"
    )
user.save!

p "Created #{User.count} users."
