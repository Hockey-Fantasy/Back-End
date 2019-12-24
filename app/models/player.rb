# frozen_string_literal: true

# Player Model
class Player < ApplicationRecord
  has_many :contracts
  has_many :teams, through: :contracts
  delegate :teams, to: :contracts
end
