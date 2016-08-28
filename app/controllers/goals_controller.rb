class GoalsController < ApplicationController

  def index
    @all_goals = Goal.find_by(
    user_id: current_user.id
    )
    render 'index'
  end

  def show
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
