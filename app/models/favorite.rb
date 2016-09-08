class Favorite < ActiveRecord::Base
  belongs_to :users
  belongs_to :book

  validates_uniqueness_of :book_id, :scope => :user_id

end
