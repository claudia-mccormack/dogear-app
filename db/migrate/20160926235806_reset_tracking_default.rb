class ResetTrackingDefault < ActiveRecord::Migration
  def change
    change_column :favorites, :tracking, :boolean, :default => false

  end
end
