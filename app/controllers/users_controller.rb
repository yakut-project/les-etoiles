class UsersController < ApplicationController
  def index
    @test = User.find(current_user.id)
    if @test.profile.nil?
      @test = Profile.new
      @test.user_id = current_user.id
      @test.save
    end

  end

  def show

    @test = current_user

  end

  def update
    render text: "update geldi baboli"
  end

  def edit
    @test = User.new

  end
end

