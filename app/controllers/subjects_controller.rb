class SubjectsController < ApplicationController
  def show
    @subject = Subject.find_by(id: params[:id])
    @books = @subject.books.all
    render 'show'
  end
end
