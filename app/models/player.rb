# frozen_string_literal: true

# Player Model
class Player < ApplicationRecord
  has_many :contracts
  has_many :users, through: :team
  has_many :leagues, through: :team
  has_many :teams, through: :contracts
end
