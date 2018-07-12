class SessionsController < ApplicationController
  def new
    @user = User.new
  end

# for login
def create
    @user = User.find_by(first_name: params[:user][:first_name]
    if @user && @user.authenticate(params[:user][:password])
      session[:user_id] = @user.id
      flash[:success] = "Welcome #{@user.first_name}."
      redirect_to soupkitchens_path
     #how to redirect to whatever page the user was on? js thing?  
    else 
      render :new, :alert => "Try again."
    end
  end

  def destroy
    session.clear
    redirect_to root_path
  end 

  def sessions_params
   params.require(:user).permit(:first_name, :last_name, :password)
   end
end
