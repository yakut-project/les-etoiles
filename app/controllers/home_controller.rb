class HomeController < ApplicationController

  def index
    select_action
  end

  def admin
    @users = User.all
  end

  def user
  end

  def teacher
  end

  private
    def select_action
      if admin_signed_in?
        admin
        render :admin
      elsif teacher_signed_in?
        teacher
        render :teacher
      elsif user_signed_in?
        user
        render :user
      else
        render :index
      end
    end
end
