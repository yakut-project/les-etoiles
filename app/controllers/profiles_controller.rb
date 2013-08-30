class ProfilesController < ApplicationController

  def index
    @test = User.find(current_user.id)
    if @test.profile.nil?
      @test = Profile.new
      @test.user_id = current_user.id
      @test.save
    end
  end

  def show
    @profile = Profile.find(params[:id])
  end

  def update
    if admin_signed_in?
      updated_profile = Profile.find(params[:id])
    else
      updated_profile = User.find(current_user.id).profile
    end
    updated_profile.update(user_params)
    redirect_to profile_path(updated_profile.id), notice: "Profile updated!"
  end

  def user_params
    params.require(:profile).permit(:stackoverflow, :twitter, :github, :blog, :bitbucket, :bio, :name, :surname)
  end
end
