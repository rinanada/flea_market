class ExhibitsController < ApplicationController
  def new
    @book = Book.new
  end

  def create
    binding.pry
    @book = Book.create(title: book_params[:title])
    @exhibit = current_user.exhibits.build(book_params)
    redirect_to root_path
    # Book.create
  end

  private
  def book_params
    params.permit(:title)
  end

end

