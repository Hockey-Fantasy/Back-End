class League < ApplicationRecord
  has_many :teams
  has_many :users, through: :team
  has_many :players, through: :team
end
