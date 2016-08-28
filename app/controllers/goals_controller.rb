class GoalsController < ApplicationController

  def index
    @my_goals = Goal.find_by(
    user_id: current_user.id
    )
    render 'index'
  end

  def show
    @goal = Goal.find_by(
    user_id: current_user.id, 
    )
    render 'show'
  end

  def new
    render 'new'
  end

  def create
    render 'index'
  end

  def update
    render 'show'
  end

  def destroy
    render 'index'
  end

end
