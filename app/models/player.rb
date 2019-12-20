class Player < ApplicationRecord
  has_many :teams
  has_many :users, through: :team
  has_many :leagues, through: :team
end
