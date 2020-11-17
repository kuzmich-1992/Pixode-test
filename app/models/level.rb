# frozen_string_literal: true

class Level < ApplicationRecord
  has_many :games
  has_many :games, through: :game_levels
end
