class SessionsController < ApplicationController
  def new
    @user = User.new
  end
  
  def create
    @user = User.find_by_username(params[:user][:username])  
    
    if @user && params[:user][:password] == @user.password
      session[:current_user_id] = @user.id
      redirect_to(store_path)
    else
      redirect_to(log_in_path)
    end
  end
  
  def destroy
    session[:current_user_id] = nil
    redirect_to(log_in_path)
  end

end