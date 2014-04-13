class SessionsController < ApplicationController
 #This is for loggin

 def new
 end

 def create
  user = User.find_by(email: params[:email])
  if user && user.authenticate(params[:password])
    session[:user_id] = user.id
    flash[:notice] = "Logged in!"
    redirect_to root_url
  else
    flash[:alert] = "Invalid login attempt."
    render 'new'
  end
 end

 def destroy
  session[:user_id] = nil
  flash[:alert] = "Logged out"
  redirect_to root_url
 end

 private

  def params_email
    params.require(:user).permit(:email)
  end

  def params_password
    params.require(:user).permit(:password)
  end
end
