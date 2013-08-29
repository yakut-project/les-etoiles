class HomeController < ApplicationController

  def index
    select_action
  end

  def admin
    @report_user = Report::Campaign.new(params[:report_user])
    @assets = @report_user.assets.page(params[:page])
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
        redirect_to users_path
      else
        render :index
      end
    end
end
