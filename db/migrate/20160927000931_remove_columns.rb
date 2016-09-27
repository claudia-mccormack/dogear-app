class RemoveColumns < ActiveRecord::Migration
  def change
    remove_column :favorites, :tracking, :boolean
    remove_column :favorites, :finished, :boolean
  end
end
