class ExhibitsController < ApplicationController
  before_action :book_params, only:[:create]

  def new
    @book = Book.new
  end

  def create
    @book = Book.create(book_params)
    @book.update(sold?: "n")
    Exhibit.create(user_id: current_user.id, book_id: @book.id)
  end

  private
  def book_params
    params.require(:book).permit(:title, :sub_title, :price, :description, :content, :category_list)
  end
end

