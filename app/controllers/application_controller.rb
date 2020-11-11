class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
<<<<<<< HEAD
  helper_method :current_user
=======
>>>>>>> 9e9ae3ecbe58f5a684e7030487da6be4b67e2d57

  def current_user
    if session[:user_id].present?
      @user = User.find_by(id: session[:user_id])
    end
  end

  def user_is_verfied
    redirect_to '/' unless user_is_authenticated
  end

  def user_is_authenticated
    !!current_user
  end
end
