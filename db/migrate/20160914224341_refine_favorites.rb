class RefineFavorites < ActiveRecord::Migration
  def change
    add_column :favorites, :deadline, :date
    add_column :favorites, :on_page, :integer
    add_column :favorites, :tracking, :boolean, :default => false
  end
end
