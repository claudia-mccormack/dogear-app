class Api::V1::FavoritesController < ApplicationController
  before_action :authenticate_user!
  skip_before_action :verify_authenticity_token
require 'pry'
  def index
    @favorites = current_user.favorites
  end

  def create
    @favorite = Favorite.create(
      user_id: current_user.id,
      book_id: params[:book_id],
      rating: params[:rating],
      on_page: 0,
      finished: false,
      tracking: false
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

  def update
    @favorite = Favorite.find_by(id: params[:id])
    @favorite.update!(
      rating: params[:rating],
      finished: true,
      on_page: params[:on_page],
      tracking: true
      )
      if @favorite.rating
        @favorite.book.subjects.each do |subject|
          @user_subject = UserSubject.create(
            user_id: current_user.id,
            subject_id: subject.id,
            rating: params[:rating]
          )
        end
      end
  end

  def destroy
    @favorite = Favorite.find_by(
      id: params[:id],
      user_id: current_user.id
    )
    @favorite.delete
    redirect_to "/favorites"
  end

end
