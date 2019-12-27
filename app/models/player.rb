# frozen_string_literal: true

# Player Model
class Player < ApplicationRecord
  has_many :contracts
  has_many :teams, through: :contracts
  delegate :teams, to: :contracts
  validates :fantasy_points, presence: true, numericality: true
  validates :goals, presence: true, numericality: { only_integer: true }
  validates :assists, presence: true, numericality: { only_integer: true }
  
end
