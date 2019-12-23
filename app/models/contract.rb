# frozen_string_literal: true

# Contract Model
class Contract < ApplicationRecord
  belongs_to :team
  belongs_to :player
end
