module SessionsHelper
  # 現在ログインしているユーザを取得する
  def current_user
    # find_byを使う理由はユーザが見つからなかった時にnilを返すだけなのでエラーとならない
    # findはユーザが見つからない場合にはエラーとなる
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def logged_in?
    !!current_user
  end
end
