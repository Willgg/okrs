class Team < ApplicationRecord
  has_many :users
  has_many :users_teams
  has_many :objectives
end
