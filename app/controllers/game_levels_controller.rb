class GameLevelsController < ActionController::API
  def index 
  	@game_levels = GameLevel.last

    render json: @game_levels

  end 
end