class OrdersController < ApplicationController
  def new
    @book = Book.find(params[:book_id])
    @order = Order.new
  end

  def create

  end
end
