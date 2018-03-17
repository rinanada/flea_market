class OrdersController < ApplicationController

  def new
    @book = Book.find(params[:book_id])
    @tax = (@book.price + 200) * 0.08
    @total_price = (@book.price + 200) * 1.08
  end

  def create
    @book = Book.find(params[:book_id])
    Order.create(user_id: current_user.id, book_id: @book.id)
    @book.update(sold?: "y")
  end
end
