class User < ActiveRecord::Base
  has_many :favorites
  has_many :books, through: :favorites
  has_many :user_subjects
  has_many :users, through: :user_subjects
  has_many :goals
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
