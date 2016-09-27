class UpdateBook < ActiveRecord::Migration
  def change
    add_column :books, :cover_large, :string
    add_column :books, :author, :string

    remove_column :books, :author_first, :string
    remove_column :books, :author_last, :string
  end
end
