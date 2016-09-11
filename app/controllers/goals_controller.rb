class GoalsController < ApplicationController
# require 'pry'
  def index
    @goals = current_user.goals
    @books = []
    @goals.each do |g|
      @books.push(Book.where(id: g.book_id).take)
    end
    @favorites = Favorite.where(user_id: current_user.id)
    render 'index'
  end

  # def show
  #   @goal = Goal.find_by(
  #   user_id: current_user.id,
  #   )
  #   render 'show'
  # end

  def new
    @favorites = current_user.favorites
    @goal = Goal.new(finish_by: DateTime.now)
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

  def edit
    @goal = Goal.find_by(id: params[:id])
    @book = Book.find_by(id: params[:book_id])
    render 'edit'
  end

  def update
    @book = Book.find_by(id: params[:book_id])
    @goal = Goal.find_by(id: params[:id])
    @goal.update(
    user_id: current_user.id,
    book_id: params[:book_id],
    finish_by: params[:finish_by]
    )
    redirect_to "/goals"
  end

  def destroy
    render 'index'
  end

end
