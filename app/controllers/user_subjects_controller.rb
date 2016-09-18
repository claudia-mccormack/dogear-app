class UserSubjectsController < ApplicationController
before_action :authenticate_user!
  def index
    @ratings = []
    current_user.subjects.each do |subject|
      @user_subject = UserSubject.where(user_id: current_user.id, subject_id: subject.id).where.not(rating: nil)
      @user_subject.each do |user_subject|
        @ratings << user_subject.rating
      end
    end

    @recommendations = []
    current_user.subjects.each do |subject|
      subject_hash = {}
      subject_hash[:subject_id] = subject.id
      subject_hash[:subject] = subject.name

      rates = @ratings.inject{|sum, rating| sum + rating}.to_i
      @subject_average = rates == 0 ? rates : rates / @ratings.length

      subject_hash[:ratings] = @subject_average
      @recommendations << subject_hash
      @recommendations.sort_by { |r| r["ratings"] }
    end

    @rec_books = []
    @recommendations.each do |r|
      @subj = Subject.find_by(id: r[:subject_id])
      @rec_books << @subj.books
    end

    render 'index'
  end

end






## View
#
# @subjects.each do |subject|
#   subject[:subject].name
#   subject[:ratings]
# end
#
# @subjects == [{subject: "Historyical", ratings: 4}, {subject: "blah", rating: 5}]
