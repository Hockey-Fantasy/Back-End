# frozen_string_literal: true

# Team Model
class Team < ApplicationRecord
  belongs_to :user
  belongs_to :league
  has_many :contracts
  has_many :players, through: :contracts
end
