# frozen_string_literal: true

10.times do |i|
  level = Level.create(game_level: i)
end

10.times do |i|
  level = Level.create(game_level: i)
  game = Game.create!(game_name: "Game - #{i}")
  game_level = GameLevel.create!(level_id: level.id, game_id: game.id, priority: i)
end
