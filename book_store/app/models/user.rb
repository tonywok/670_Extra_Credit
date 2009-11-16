class User < ActiveRecord::Base
  validates_uniqueness_of :username
  
  def authenticate
    user = User.find_by_username(params[:username])
    
    if user && user.password == params[:password]
      session[:current_user_id] == user.id
    else
      redirect_to(sign_in_path)
    end
  end
  
end
