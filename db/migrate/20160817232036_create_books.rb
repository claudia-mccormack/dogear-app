class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :author_last
      t.string :author_first
      t.string :isbn
      t.date :pub
      t.text :description
      t.integer :pages

      t.timestamps null: false
    end
  end
end
