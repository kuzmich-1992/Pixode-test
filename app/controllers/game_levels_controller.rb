class GameLevelsController < ActionController::API
  def index 
  	@game_levels = GameLevel.all
  	render json: @game_levels
  end 
end