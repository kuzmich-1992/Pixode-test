class GameLevelsController < ActionController::API
  def index 
  	@game_level = GameLevel.all

  	render json: @game_level, fields: [:game_name, :game_level, :priority], adapter: :json
  end
end