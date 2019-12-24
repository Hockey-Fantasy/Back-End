# frozen_string_literal: true

# User Model
class User < ApplicationRecord
  has_many :teams
  has_many :leagues, through: :team
  validates :first_name, presence :true, length: { in: 6..20 }
  validates :last_name, presence :true, length: { in: 6..20 }
  validates :email, presence :true, length: { in: 6..20 }, uniqueness: true
  validates :username, presence :true, length: { in: 6..20 }, uniqueness: true
  validates :password, presence :true, length: { in: 6..20 }
 
 
end
