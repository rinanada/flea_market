class UserDetailsController < ApplicationController
    before_action :user_orders_and_exhibits, only: [:edit, :update]
    before_action :set_user_detail, only: [:edit, :update]

  def new
    @user_detail = UserDetail.new
  end

  def create
    @user_detail = UserDetail.create(user_detail_params)
    if @user_detail.save
      redirect_to root_path, notice: 'Your profile was successfully created'
    else
      flash.now[:alert] = 'Your profile was unsuccessfully created'
    end
  end

  def edit
  end

  def update
    if @user_detail.update(user_detail_params)
      redirect_to root_path, notice: 'Your profile was successfully updated'
    else
      flash.now[:alert] = 'Your profile was unsuccessfully updated'
    end
  end

  private
  def user_detail_params
    params.require(:user_detail).permit(:lastname, :firstname, :postalcode, :place, :callnumber).merge(user_id: current_user.id)
  end

  def user_orders_and_exhibits
    @orders = Order.includes(:book).where(user_id: current_user.id)
    @exhibits = Exhibit.includes(:book).where(user_id: current_user.id)
  end

  def set_user_detail
    @user_detail = UserDetail.find_by(user_id: current_user.id)
  end
end
