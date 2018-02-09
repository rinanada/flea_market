class OrdersController < ApplicationController

  def new
    @book = Book.find(params[:book_id])
    @tax = (@book.price + 200) * 0.08
    @total_price = (@book.price + 200) * 1.08
  end

  def create

  end
end
