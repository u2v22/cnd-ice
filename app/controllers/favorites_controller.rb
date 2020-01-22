class FavoritesController < ApplicationController
  before_action :authenticate_user!
  def index
    @favorites = Favorite.all
  end

  def update
    favorite = Favorite.where(climb: Climb.find(params[:climb]), user: current_user)

    if favorite == []
      Favorite.create!(climb: Climb.find(params[:climb]), user: current_user)
      @favorite_text = true
    else
      favorite.destroy_all
      @favorite_text = false
    end
    respond_to do |format|
      format.html { }
      format.js { }
    end
  end

  private

  # def favorite_params
  #   params.require(:climb, :user).permit(:climb_id, :user_id)
  # end
end
