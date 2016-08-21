class BooksController < ApplicationController
  def index
    @all_books = Book.all
    render 'index'
  end

  def show
    render 'show'
  end

  def search
    render 'search'
  end

end
