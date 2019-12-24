# frozen_string_literal: true

# User Model
class User < ApplicationRecord
  has_many :teams
  has_many :leagues, through: :team
 
end
