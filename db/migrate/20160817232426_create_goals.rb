class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|
      t.integer :user_id
      t.integer :num_books
      t.integer :num_pages
      t.integer :days
      t.integer :weeks
      t.integer :months
      t.integer :years
      t.integer :progress

      t.timestamps null: false
    end
  end
end
