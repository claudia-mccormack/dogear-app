class GoalsController < ApplicationController
before_action :authenticate_user!
require 'pry'
  def index
    @favorites = current_user.favorites
    @goals = current_user.goals
  end

  def edit
    @goal = Goal.find_by(id: params[:id])
    @book = Book.find_by(id: @goal.book_id)
    render 'edit'
  end

  def update
    @book = Book.find_by(id: params[:book_id])
    @goal = Goal.find_by(id: params[:id])
    @goal.update(
    user_id: current_user.id,
    book_id: params[:book_id],
    deadline: Date.new(params[:deadline]["year"].to_i,params[:deadline]["month"].to_i,params[:deadline]["day"].to_i),
    )
    redirect_to "/goals"
  end

  def destroy
    render 'index'
  end

end
