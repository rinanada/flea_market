class UsersController < ApplicationController
  def show
    @order_books = Order.includes(:book).where(user_id: current_user.id)
  end
end
