class User < ApplicationRecord
  has_many :teams
  has_many :leagues, through: :team
  has_many :players, through: :team
end
