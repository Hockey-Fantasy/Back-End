class TeamSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :image
  # belongs_to :user
  belongs_to :league
  has_many :players, through: :contracts
end
