class UsersController < ApplicationController
  def index
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      # send email confirmation
      # UserMailer.signup_confirmation(@user).deliver
      flash[:notice] = "User Created!"
      redirect_to root_url
    else
      flash[:alert] = "Error"
      render 'new'
    end
  end

  def destroy
  end

  def show
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end
