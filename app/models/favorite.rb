class Favorite < ActiveRecord::Base
  belongs_to :users
  belongs_to :book
  belongs_to :goal
  validates_uniqueness_of :book_id, :scope => :user_id
end
