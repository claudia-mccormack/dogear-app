class Api::V1::BooksController < ApplicationController
  require 'pry'
  def index
    if params[:name].nil? || params[:name].empty?
      @all_books = Book.all
    else
      @all_books = Book.joins(:subjects).where(subjects: {name: params[:name].split(",")}).distinct
    end
  end

  def search
    if params[:name].nil? || params[:name].empty?
      @all_books = Book.all
    else
      @all_books = Book.joins(:subjects).where(subjects: {name: params[:name].split(",")}).distinct
    end
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

  # def create
  #   @book = Book.create(
  #   title: params[:title],
  #   author_first: params[:author_first],
  #   author_last: params[:author_last],
  #   isbn:  params[:isbn],
  #   pages: params[:pages],
  #   pub: params[:pub],
  #   cover: params[:cover],
  #   series: params[:series],
  #   description: params[:description]
  #   )
  #   redirect_to "/books/#{@book.id}"
  # end
  #
  # def edit
  #   @book = Book.find_by(id: params[:id])
  #   render "edit.html.erb"
  # end
  #
  # def update
  #   @book = Book.find_by(id: params[:id])
  #   @book.update(
  #   title: params[:title],
  #   author_first: params[:author_first],
  #   author_last: params[:author_last],
  #   isbn:  params[:isbn],
  #   pages: params[:pages],
  #   pub: params[:pub],
  #   cover: params[:cover],
  #   series: params[:series],
  #   description: params[:description]
  #   )
  #   redirect_to "/books/#{@book.id}"
  # end
  #
  # def destroy
  #   @book = Book.find_by(id: params[:id])
  #   @book.destroy
  #   redirect_to "/books"
  # end

end
