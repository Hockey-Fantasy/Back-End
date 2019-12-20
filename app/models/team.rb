class Team < ApplicationRecord
  belongs_to :user
  belongs_to :league
  belongs_to :player
end
