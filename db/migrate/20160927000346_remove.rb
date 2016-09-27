class Remove < ActiveRecord::Migration
  def change
    change_column_default(:favorites, :finished, nil)
    change_column_default(:favorites, :tracking, nil)
  end
end
