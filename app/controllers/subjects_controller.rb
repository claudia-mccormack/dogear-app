class SubjectsController < ApplicationController
  def index
    @subjects = Subject.all
  end

  def show
    @subject = Subject.find_by(id: params[:id])
    @books = @subject.books.all
  end

end
