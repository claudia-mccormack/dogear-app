class Book < ActiveRecord::Base
  has_many :book_subjects
  has_many :subjects, through: :book_subjects
  has_many :favorites
  has_many :users, through: :favorites
end
