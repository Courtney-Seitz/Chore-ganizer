# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Occupant.destroy_all
Chore.destroy_all

Occupant.create!([{
  name: "Person1",
  age: "50"
},
{
  name: "Person2",
  age: "30"
},
{
  name: "Person3",
  age: "20"
},
{
  name: "Person4",
  age: "10"
},

])
