class ApplicationController < ActionController::Base
  
  # Mix-in
  # ControllerからHelperのメソッドを使うことはデフォルトではできない
  include SessionsHelper
  
  private

  # 事前にログイン認証を確認する処理
  def require_user_logged_in
    unless logged_in?
      redirect_to login_url
    end
  end
end
