class GameLevelSerializer < ActiveModel::Serializer
  belongs_to :game
  belongs_to :level
  
end
