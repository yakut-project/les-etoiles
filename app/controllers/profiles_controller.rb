class ProfilesController < ApplicationController

  def index

    @test = User.find(current_user.id)

    if @test.profile.nil?
      @test = Profile.new
      @test.user_id = current_user.id
      @test.save
    end

  end

  def update



    if admin_signed_in?
      updated_profile = Profile.find(params[:id])
    else
      updated_profile = User.find(current_user.id).profile
    end

    #render json: params

    updated_profile.update(user_params)

    redirect_to home_index_path


  end

  def user_params
    params.require(:profile).permit(:stackoverflow, :twitter, :github, :blog, :bitbucket, :bio, :name, :surname)
  end

  def edit
    @profile = Profile.find(params[:id])

  end
end
