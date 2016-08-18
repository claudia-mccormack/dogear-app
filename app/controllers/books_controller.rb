class BooksController < ApplicationController
  def index
    render 'index'
  end

  def show
    render 'show'
  end

  def search
    render 'search'
  end

end
