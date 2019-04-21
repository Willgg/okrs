# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Team.create([
  {name: 'Sales'},
  {name: 'Product'},
  {name: 'Tech'},
  {name: 'Marketing'},
  {name: 'Customer Success'}
])

10.times do
  User.create(
    email: Faker::Internet.email,
    firstname: Faker::Name.first_name,
    lastname: Faker::Name.last_name,
    password: 'azerty'
  )
end

teams = Team.all
User.all.each do |user|
  2.times do
    users_team = user.users_teams.build(team: teams.sample)
    users_team.save
  end
end

User.all.each do |user|
  user.teams.each do |team|
    2.times do
      Objective.create(
        title: Faker::Hipster.sentence,
        user: user,
        team: team
      )
    end
  end
end
