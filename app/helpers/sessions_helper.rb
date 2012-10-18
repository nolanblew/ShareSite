module SessionsHelper
  def sign_in(user)
    session[:remember_token] = user.id
    self.current_user = user
  end

  def signed_in?
    !current_user.nil?
  end

  def current_user=(user)
    @current_user = user
  end

  def current_user
    unless session[:remember_token].nil?
      current_user ||= User.find(session[:remember_token])
    end
  end

  def sign_out
    self.current_user = nil
    session[:remember_token] = nil
  end
end
