class FavoritesController < ApplicationController
  def index
    @favorites = Favorite.all
  end

  def create
    @favorite = Favorite.new
    @favorite.user_id = current_user.id
    @favorite.climb = Climb.find(params[:climb_id])
    @favorite.save!
  end

  def update
    # Climb.find(favorite_params[:climb_id]).update(status: @favorite.status)
    # @favorite.update!(favorite_params)
  end

  private

  # def set_favorites
  #   @favorite = Favorite.find(params[:id])
  # end

  def favorite_params
    params.require(:climb, :user).permit(:climb_id, :user_id)
  end
end
