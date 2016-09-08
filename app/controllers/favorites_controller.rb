class FavoritesController < ApplicationController
  before_action :authenticate_user!
  require 'pry'
  def index
    @favorites = current_user.favorites
    render "index.html.erb"
  end

  def finished
    @favorite = Favorite.find_by(
      book_id: params[:book_id],
      user_id: current_user.id
    )
    @favorite.update(
      finished: true
    )
    redirect_to "/"
  end

  def create
    @favorite = Favorite.create(
      book_id: params[:book_id],
      user_id: current_user.id
    )
    if @favorite.valid?
      @favorite.save
      redirect_to "/favorites"
      flash[:success] = "Added to Favorites!"
    else
      flash[:info] = "Looks like that books is already in your Favorites!"
      redirect_to "/"
    end
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
