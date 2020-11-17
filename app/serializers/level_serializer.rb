# frozen_string_literal: true

class LevelSerializer < ActiveModel::Serializer
  has_many :games
  has_many :games, through: :game_levels
end
