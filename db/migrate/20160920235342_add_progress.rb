class AddProgress < ActiveRecord::Migration
  def change
    add_column :favorites, :progress, :integer
  end
end
