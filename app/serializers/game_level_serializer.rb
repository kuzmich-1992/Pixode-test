class GameLevelSerializer < ActiveModel::Serializer

  attributes :game_name, :game_level, :priority
  
  

  def game_name
    
    self.object.game.game_name
    
  end 

  def game_level
  	
    self.object.level.game_level
   
  end
end
