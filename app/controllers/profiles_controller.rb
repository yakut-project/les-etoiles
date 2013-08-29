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
    updated_profile = User.find(current_user.id).profile

    updated_profile.update(user_params)



    redirect_to home_index_path


  end

  def user_params
    params.require(:profile).permit(:stackoverflow, :twitter, :github, :blog, :bitbucket, :bio)
  end
end
