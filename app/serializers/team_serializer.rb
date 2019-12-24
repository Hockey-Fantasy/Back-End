class TeamSerializer < ActiveModel::Serializer
  belongs_to :user
  belongs_to :league
  attributes :id, :name, :location
  has_many :players, through: :contracts
 
end
