class CorrectGoalBooks < ActiveRecord::Migration
  def change
    change_column :goal_books, :goal_id, :integer
    remove_column :goal_books, :integer, :string
  end
end
