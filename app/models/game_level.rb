# frozen_string_literal: true

class GameLevel < ApplicationRecord
  belongs_to :game
  belongs_to :level
end
