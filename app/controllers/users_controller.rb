class UsersController < ApplicationController
  def index

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

