# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

expenditures = Expenditure.create!(
  [
    { name: 'Avocado', quantity: 4, price: 22, purchase_date: DateTime.new(2015, 06, 02) },
    { name: 'Phone', quantity: 2, price: 600, purchase_date: DateTime.new(2015, 06, 01) },
    { name: 'Knead', quantity: 1, price: 60, purchase_date: DateTime.new(2015, 06, 03) },
    { name: 'Birthday Cake', quantity: 2, price: 50, purchase_date: DateTime.new(2015, 06, 01) }
  ])