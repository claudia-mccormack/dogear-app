class UpdateGoalsModel < ActiveRecord::Migration
  def change
    remove_column :goals, :num_books, :integer
    remove_column :goals, :num_pages, :integer
    remove_column :goals, :days, :integer
    remove_column :goals, :weeks, :integer
    remove_column :goals, :months, :integer
    remove_column :goals, :years, :integer

    add_column :goals, :on_page, :integer
    add_column :goals, :book_id, :integer
    add_column :goals, :deadline, :date
    add_column :goals, :date_set, :date
    add_column :goals, :date_complete, :date
  end
end
