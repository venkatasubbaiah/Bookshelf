class ApplicationController < ActionController::Base

  helper :all
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  helper_method :current_admin_session, :current_admin

  private

  def current_admin_session
    return @current_admin_session if defined?(@current_admin_session)
    @current_admin_session = AdminSession.find
  end

  def current_admin
    return @current_admin if defined?(@current_admin)
    @current_admin = current_admin_session && current_admin_session.record
  end

end
