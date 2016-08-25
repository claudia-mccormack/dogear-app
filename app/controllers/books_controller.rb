class BooksController < ApplicationController
  def index
    @all_books = Book.all
    render 'index'
  end

  def show
    @book = Book.find_by(id: params[:id])
    render 'show'
  end

  def new
    @book = Book.new
    render "new.html.erb"
  end

  def create
    @book = Book.create(
    title: params[:title],
    author_first: params[:author_first],
    author_last: params[:author_last],
    isbn:  params[:isbn],
    pages: params[:pages],
    pub: params[:pub],
    cover: params[:cover],
    series: params[:series],
    description: params[:description]
    )
    redirect_to "/books/#{@book.id}"
  end

  def edit
    @book = Book.find_by(id: params[:id])
    render "edit.html.erb"
  end

  def update
    @book = Book.find_by(id: params[:id])
    @book.update(
    title: params[:title],
    author_first: params[:author_first],
    author_last: params[:author_last],
    isbn:  params[:isbn],
    pages: params[:pages],
    pub: params[:pub],
    cover: params[:cover],
    series: params[:series],
    description: params[:description]
    )
    redirect_to "/books/#{@book.id}"
  end

  def destroy
    @book = Book.find_by(id: params[:id])
    @book.destroy
    redirect_to "/books"
  end

end
