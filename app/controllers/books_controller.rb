class BooksController < ApplicationController
require 'googlebooks'
  def index
    @all_books = Book.all
  end

  def search
  end

  def show
    @book = Book.find_by(id: params[:id])
    @similar = []
    @book.subjects.each do |subject|
      @similar << subject.books
    end
  end

end
