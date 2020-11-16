10.times do |i|
  Game.create(game_name: "Game - #{i}")
end


20.times do |i|
  Level.create(game_level: i)
end

10.times do |i|
  GameLevel.create(priority: i+100)
end