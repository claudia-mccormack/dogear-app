class FavoritesController < ApplicationController
  # before_action :authenticate_user!

  def index
    @favorites = current_user.favorites
    render "index.html.erb"
  end

  def create
    @favorite = Favorite.create(
    book_id: params[:book_id],
    user_id: current_user.id
    )
    redirect_to "/favorites"
  end

  def destroy
    @favorite = Favorite.delete(
    id: params[:id]
    )
    redirect_to "/books"
  end

end
