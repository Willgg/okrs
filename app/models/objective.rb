class Objective < ApplicationRecord
  belongs_to :user
  belongs_to :team
  belongs_to :objective, optional: true
end
