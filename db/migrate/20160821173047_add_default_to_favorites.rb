class AddDefaultToFavorites < ActiveRecord::Migration
  def change
    change_column :favorites, :finished, :boolean, :default => false
  end
end
