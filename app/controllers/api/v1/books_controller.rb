class Api::V1::BooksController < ApplicationController
  require 'pry'
  def index
    if params[:name].nil? || params[:name].empty?
      @all_books = Book.all
    else
      names = params[:name].split(',')
      @all_books = Book.joins(:subjects)
        .where(subjects: {name: names})
        .group("books.id")
        .having("count(*) >= ?", names.length)
    end
  end

  def search
    if params[:name].nil? || params[:name].empty?
      @books = Book.all
    else
      names = params[:name].split(',')
      @books = Book.joins(:subjects)
        .where(subjects: {name: names})
        .group("books.id")
        .having("count(*) >= ?", names.length)
    end
    # for loop
    # db query that concatonates params into one long SQL query
    render 'search'
  end

  def show
    @book = Book.find_by(id: params[:id])
    @similar = []
    @book.subjects.each do |subject|
      @similar << subject.books
    end
  end

  def new
    @book = Book.new
    render "new.html.erb"
  end

end
