class AddColumns < ActiveRecord::Migration
  def change
    add_column :favorites, :tracking, :boolean
    add_column :favorites, :finished, :boolean
  end
end
