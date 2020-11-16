class Level < ApplicationRecord
  has_many :games ,through: :game_levels
end
