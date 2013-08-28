class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  layout :determine_layout

  private
  def determine_layout
    layout = 'application'
    layout = 'user' if user_signed_in?
    layout = 'teacher' if teacher_signed_in?
    layout = 'admin' if admin_signed_in?
    layout
  end
end
