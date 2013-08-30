class UsersController < ApplicationController
  def index
    if admin_signed_in?
      @user

    end

  end

  def show
    if admin_signed_in?
      @test = User.find(params[:id])
      @is_readonly = true;
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

  def destroy
    if admin_signed_in?
      User.destroy(params[:id])
    end
    redirect_to home_index_path
  end
end

