class AddBookIdAndDateToGoals < ActiveRecord::Migration
  def change
    add_column :goals, :book_id, :integer
    add_column :goals, :finish_by, :date
  end
end
