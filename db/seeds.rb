# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Expenditure.delete_all
User.delete_all

User.create! email: "ian@ian.com", password: "12345678", password_confirmation: "12345678"
User.create! email: "brian@brian.com", password: "12345678", password_confirmation: "12345678"
User.create! email: "erica@erica.com", password: "12345678", password_confirmation: "12345678"

expenditures = Expenditure.create!(
  [
    { name: 'Avocado', quantity: 4, price: 22, purchase_date: DateTime.new(2015, 06, 02), user_id: User.where(email: "ian@ian.com") },
    { name: 'Phone', quantity: 2, price: 600, purchase_date: DateTime.new(2015, 06, 01), user_id: User.where(email: "brian@brian.com") },
    { name: 'Knead', quantity: 1, price: 60, purchase_date: DateTime.new(2015, 06, 03), user_id: User.where(email: "erica@erica.com") },
    { name: 'Birthday Cake', quantity: 2, price: 50, purchase_date: DateTime.new(2015, 06, 01), user_id: User.where(email: "ian@ian.com") }
  ])

