class Book < ActiveRecord::Base
  has_many :book_subjects
  has_many :subjects, through: :book_subjects
  has_many :favorites
  has_many :users, through: :favorites
  has_many :goals
  has_many :goal_books
  has_many :goals, through: :goal_books
end
