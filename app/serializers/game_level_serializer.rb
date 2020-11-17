# frozen_string_literal: true

class GameLevelSerializer < ActiveModel::Serializer
  attributes :game_name, :game_level, :priority

  def game_name
    object.game.game_name
  end

  def game_level
    object.level.game_level
  end
end
