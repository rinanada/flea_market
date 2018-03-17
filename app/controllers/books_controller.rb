class BooksController < ApplicationController
  def index
    if user_signed_in?
      @user_detail = UserDetail.find_by(user_id: current_user.id)
      @mastname = @user_detail.try(:lastname)  || ''
      @mastname += @user_detail.try(:firstname) || '名無し'
      @mastname += 'さん'
    else
      @mastname  = 'ログイン/新規登録'
    end
    @books = Book.page(params[:page]).per(4)
  end

  def show
    @book = Book.find(params[:id])
  end
end

