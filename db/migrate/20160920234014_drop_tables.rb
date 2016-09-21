class DropTables < ActiveRecord::Migration
  def change
    drop_table :goals
    drop_table :goal_books
    drop_table :reading_goals

  end
end
