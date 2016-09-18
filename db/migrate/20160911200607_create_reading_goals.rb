class CreateReadingGoals < ActiveRecord::Migration
  def change
    create_table :reading_goals do |t|
      t.integer :book_id
      t.integer :goal_id

      t.timestamps null: false
    end
  end
end
