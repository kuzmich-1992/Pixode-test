class GameSerializer < ActiveModel::Serializer
  has_many :levels
  has_many :levels ,through: :game_levels
end
