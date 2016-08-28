class FavoritesController < ApplicationController
  # before_action :authenticate_user!
  require 'pry'
  def index
    @favorites = current_user.favorites
    render "index.html.erb"
  end

  def finished
    # binding.pry
    @favorite = Favorite.find_by(
      book_id: params[:book_id],
      user_id: current_user.id
    )
    @favorite.update!(
      finished: true
    )
    redirect_to "/"
  end

  def create
    @favorite = Favorite.create(
      book_id: params[:book_id],
      user_id: current_user.id
    )
    redirect_to "/favorites"
  end

  def destroy
    @favorite = Favorite.find_by(
      book_id: params[:book_id],
      user_id: current_user.id
    )
    @favorite.delete
    redirect_to "/favorites"
  end

end
