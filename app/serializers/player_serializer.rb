class PlayerSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :position, :fantasy_points, :goals, :assists, :image
end
