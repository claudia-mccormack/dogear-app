class GoalsController < ApplicationController
# require 'pry'
  def index
    @goals = Goal.where(user_id: current_user.id)
    @favorites = Favorite.where(user_id: current_user.id)
    render 'index'
  end

  def show
    @goal = Goal.find_by(
    user_id: current_user.id,
    )
    render 'show'
  end

  def new
    @faves = current_user.favorites
    render "new.html.erb"
  end

  def create
    @goal = Goal.create(
    user_id: current_user.id,
    book_id: params[:book_id],
    finish_by: params[:finish_by],
    num_books: params[:num_books],
    num_pages: params[:num_pages],
    days: params[:days],
    weeks: params[:weeks],
    months: params[:months],
    years: params[:years],
    progress: params[:progress]
    )
    redirect_to "/goals"
  end

  def update
    @goal = Goal.update(
    user_id: current_user.id,
    book_id: params[:book_id],
    finish_by: params[:finish_by],
    num_books: params[:num_books],
    num_pages: params[:num_pages],
    days: params[:days],
    weeks: params[:weeks],
    months: params[:months],
    years: params[:years],
    progress: params[:progress]
    )
    render 'index'
  end

  def destroy
    render 'index'
  end

end
