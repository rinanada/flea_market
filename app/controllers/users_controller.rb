class UsersController < ApplicationController
  def show
    @orders = Order.includes(:book).where(user_id: current_user.id)
    @exhibits = Exhibit.includes(:book).where(user_id: current_user.id)
  end
end
