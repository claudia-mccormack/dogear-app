class Goal < ActiveRecord::Base
  belongs_to :user
  has_many :goal_books
  has_many :books, through: :goal_books
end
