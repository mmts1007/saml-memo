class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_user
    @current_user ||= Account.find_by(login_id: session[:nameid])
  end

  def is_logined?
    current_user.present?
  end
end
