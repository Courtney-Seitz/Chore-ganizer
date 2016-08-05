# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require_relative './chore_data.rb'
require_relative './occupant_data.rb'

Chore.destroy_all
Occupant.destroy_all

chore_data = get_chore_data()
occupant_data = get_occupant_data()

chore_data.each_pair do |occupant_name, chores|
  info = occupant_data[occupant_name]
  current_occupant = Occupant.create!({
    name:         info[:name],
    age:          info[:age]
    })

    chores.each do |chore|
      Chore.create!({
        task:        chore[:task],
        description: chore[:description],
        occupant:    current_occupant
        })
      end
    end
