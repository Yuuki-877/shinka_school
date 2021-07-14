class ApplicationController < ActionController::Base

  def after_sign_in_path_for(resource)
    if current_user
      flash[:notice] = "ユーザーとしてログインに成功しました"
      reservations_path
    elsif current_mentor
      flash[:notice] = "メンターとしてログインに成功しました"
      reservations_path
    # else
    #   flash[:notice] = "新規登録完了しました。次にプロフィールを入力してください"
    #   new_profile_path
    end
  end

  def current_user?
    current_user ? true : false
  end
end
