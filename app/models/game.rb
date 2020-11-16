class Game < ApplicationRecord
  has_many :levels ,through: :game_levels
end
