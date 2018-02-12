class UsersController < ApplicationController
  before_action :user_orders_and_exhibits, only: [:edit, :update]

  def new
    @user = User.new
  end

  def create
    @user = current_user.build(user_params)
    if @user.save
      redirect_to root_path
    end
  end


  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to root_path
    end
  end

  private
  def user_params
    params.require(:user).permit(:lastname, :firstname, :postalcode)
  end

  def user_orders_and_exhibits
    @orders = Order.includes(:book).where(user_id: current_user.id)
    @exhibits = Exhibit.includes(:book).where(user_id: current_user.id)
  end
end

