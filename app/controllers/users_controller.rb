class UsersController < ApplicationController
  def index
    if admin_signed_in?
      @user

    end

  end

  def show
    if admin_signed_in?
      @test = User.find(params[:id])
    else
      @test = current_user
    end
  end

  def update
    render text: "update geldi baboli"
  end

  def edit
    @user = User.find(params[:id])

    render json: @user.profile
  end
end

