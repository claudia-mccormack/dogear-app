class AddRatingtoUserSubject < ActiveRecord::Migration
  def change
    add_column :user_subjects, :rating, :integer
  end
end
