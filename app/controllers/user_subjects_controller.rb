class UserSubjectsController < ApplicationController
  before_action :authenticate_user!
    def index
      # @ratings = []
      # current_user.subjects.each do |subject|
      #   @user_subject = UserSubject.where(user_id: current_user.id, subject_id: subject.id).where.not(rating: nil)
      #   @user_subject.each do |user_subject|
      #     @ratings << user_subject.rating
      #   end
      # end

      # @ratings = []
      subject_ids = current_user.subjects.map(&:id)
      user_subjects = UserSubject.where(user_id: current_user.id, subject_id: subject_ids)
      @subject_hash = {}
      user_subjects.each do |user_subject|
        subject_name = Subject.find_by(id: user_subject.subject_id).name
        if @subject_hash[subject_name].nil?
          subject_ratings = user_subjects.where(subject_id: user_subject.subject_id)
          ratings = subject_ratings.map(&:rating)
          rates = ratings.inject{|sum, rating| sum + rating}.to_i
          @subject_hash[subject_name] = [rates / subject_ratings.size]
          @subject_hash[subject_name] << Book.joins(:subjects).where(subjects: {id: user_subject.subject_id}).distinct
        end

        # @subject_books = []
        # user_subjects.each do |user_subject|
          # @subject_books << books
        # end
      end
      # @books = Book.joins(:subjects).where(subjects: {id: user_subjects.map(&:subject_id)}).distinct


      # @recommendations = []
      # current_user.subjects.each do |subject|
      #   subject_hash = {}
      #   subject_hash[:subject_id] = subject.id
      #   subject_hash[:subject] = subject.name
      #
      #   rates = @ratings.inject{|sum, rating| sum + rating}.to_i
      #   @subject_average = rates == 0 ? rates : rates / @ratings.length
      #
      #   subject_hash[:ratings] = @subject_average
      #   @recommendations << subject_hash
      #   @recommendations.sort_by { |r| r["ratings"] }
      # end
      #
      # @recommendations.each do |r|
      #   @subj = Subject.find_by(id: r[:subject_id])
      # end

      render 'index'
    end
end
