class FixBookGoals < ActiveRecord::Migration
  def change
    change_column :goal_books, :goal_id, :integer
  end
end
