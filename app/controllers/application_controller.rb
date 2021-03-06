# frozen_string_literal: true

class ApplicationController < ActionController::Base
  def after_sign_in_path_for(resource)
    if current_user
      flash[:notice] = "ユーザーとしてログインに成功しました"
      calendars_path
    elsif current_mentor
      flash[:notice] = "メンターとしてログインに成功しました"
      calendars_path
    elsif current_admin
      flash[:notice] = "adminとしてログインに成功しました"
      attendances_path
    end
  end

  def current_user?
    current_user ? true : false
  end

  def current_mentor?
    current_mentor ? true : false
  end

  def current_admin?
    current_admin ? true : false
  end
end
