class UserController < ApplicationController
  def index
    @test = User.all
  end

  def show
    @test = User.find(params[:id]).profile


  end

  def update

  end
end

