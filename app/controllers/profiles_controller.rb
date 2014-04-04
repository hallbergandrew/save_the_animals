class ProfilesController < ApplicationController
  def index
    @profiles = Profile.all
    render 'index'
  end

  def create
    @profile = Profile.new(params[:profile])
    if @profile.save
        redirect_to profiles_path
    else
      render 'new'
    end
  end

  def new
    @profile = Profile.new
    render 'new'
  end

  def destroy
  end

  def show
  end
end
