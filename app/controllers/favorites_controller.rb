class FavoritesController < ApplicationController
  def index
    @favorites = current_user.favorites
  end

  def deadline
    @favorite = Favorite.find_by(
      book_id: params[:book_id],
      user_id: current_user.id
    )
    @favorite.update!(
      deadline: Date.new(params[:deadline]["year"].to_i,params[:deadline]["month"].to_i,params[:deadline]["day"].to_i),
      tracking: true,
      on_page: 0,
    )
    redirect_to "/favorites"
  end

  def progress
    @favorite = Favorite.find_by(
      book_id: params[:book_id],
      user_id: current_user.id
    )
    @favorite.update!(
      on_page: params[:on_page]
    )
    redirect_to "/favorites"
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
    redirect_to "/favorites"
  end

  def rating
    @favorite = Favorite.find_by(
      book_id: params[:book_id],
      user_id: current_user.id,
      finished: true
    )
    @favorite.update!(
      rating: params[:rating]
    )
    @favorite.book.subjects.each do |subject|
      @user_subject = UserSubject.create(
        user_id: current_user.id,
        subject_id: subject.id,
        rating: params[:rating]
      )
    end
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
      id: params[:id],
      user_id: current_user.id
    )

    @favorite.delete
    redirect_to "/favorites"
  end

end
