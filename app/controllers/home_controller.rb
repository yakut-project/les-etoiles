class HomeController < ApplicationController

  def index
    select_action
  end

  def admin
    @grid = Grids::UsersGrid.new(params[:grid])
    @assets = @grid.assets.paginate(:page => params[:page])
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
