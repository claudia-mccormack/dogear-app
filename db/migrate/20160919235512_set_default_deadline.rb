class SetDefaultDeadline < ActiveRecord::Migration
  def change
    change_column :favorites, :deadline, :date, :default => Date.current
  end
end
