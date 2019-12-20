class User < ApplicationRecord
  has_many :teams
  has_many :players, through: :team
  has_many :leagues, through: :team
end
