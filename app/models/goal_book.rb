class GoalBook < ActiveRecord::Base
  belongs_to :goal
  belongs_to :book 
end
