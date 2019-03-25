class Goal < ApplicationRecord
  belongs_to :goal
  belongs_to :user

  validates :title, presence: true
end
