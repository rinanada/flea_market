class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def show
    @book = Book.find(1)
  end
end
