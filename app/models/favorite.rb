class Favorite < ActiveRecord::Base
  belongs_to :users
  belongs_to :book
  belongs_to :goal
  validates_uniqueness_of :book_id, :scope => :user_id

  # attr_accessor :user_id, :book_id, :finished, :rating, :on_page, :tracking, :progress

  def initialize(options)
    @user_id = current_user.id,
    @book_id = options[:book_id],
    @finished = options[:finished],
    @rating = options[:rating],
    @on_page = options[:on_page],
    @tracking = options[:tracking],
    @deadline = options[:deadline],
    @progress = options[:progress]
  end



end
