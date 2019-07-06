class UsersController < ApplicationController
  # 事前にログインを確認する
  before_action :require_user_logged_in, only: [:show]
  
  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    
    if @user.save
      flash[:success] = '会員登録が完了しました。'
      # 強制的に「users#show」のアクションに飛ばす
      redirect_to root_url
    else
      flash.now[:danger] = '会員登録に失敗しました。'
      # new.html.erbを表示するだけ
      render :new
    end
  end
  
  # アクションではなく、クラス内のみで使用することを明示
  private

  # ストロングパラメータ
  # 送信されてきたデータを精査する
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
  
end
