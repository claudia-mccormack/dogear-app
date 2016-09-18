class AddDefaultsToColumns < ActiveRecord::Migration
  def change

    add_column :books, :cover, :string
    add_column :books, :series, :boolean, :default => false

    add_column :users, :first_name, :string
    add_column :users, :last_name, :string


  end
end
