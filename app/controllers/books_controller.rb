class BooksController < ApplicationController
  def index
    if user_signed_in?
      @user = User.find_by(id: current_user.id)
    end
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end
end

