class CreateFavorites < ActiveRecord::Migration
  def change
    create_table :favorites do |t|
      t.integer :book_id
      t.integer :user_id
      t.boolean :finished
      t.integer :rating

      t.timestamps null: false
    end
  end
end
