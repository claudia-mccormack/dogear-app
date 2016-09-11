class CreateGoalBooks < ActiveRecord::Migration
  def change
    create_table :goal_books do |t|
      t.string :goal_id
      t.string :integer
      t.integer :book_id

      t.timestamps null: false
    end
  end
end
