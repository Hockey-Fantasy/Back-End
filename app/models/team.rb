# frozen_string_literal: true

# Team Model
class Team < ApplicationRecord
  belongs_to :user
  belongs_to :league
  has_many :contracts
  has_many :players, through: :contracts
  # validates :name, presence: true, length: { in: 4..20 }, uniqueness: true
  # validates :location, presence: true, length: { in: 4..20 }
end
