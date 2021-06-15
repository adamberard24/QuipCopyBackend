class PlayersController < ApplicationController
    def index
      @players = Player.all
      render json: @players
    end
  
    def create
      game = Game.find(player_params[:game_id])
      return if game.players.size == 8 # Max number of players
  
      @player = Player.create(player_params)
  
      ActionCable.server.broadcast("game-#{player_params[:game_id]}:players", Game.find(player_params[:game_id]).players)
      render json: @player
    end
  
    private
  
    def player_params
      params.require(:player).permit!
    end
  end
#THIS WAS MY CREATE BEFORE FINDING EXISTING CODE. KEEPING TO REIMPLIMENT LATER FOR LOGIN
#     def create
#         user = User.new(user_params)

#         if user.valid?
#             user.save
#             render json: user
#         else
#             render json: {error: "Can't create user"}
#     end
# end

