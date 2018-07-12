class UsersController < ApplicationController


  def index
    @users = User.all
  end 
  
	def new
		@user = User.new
	end 

	def show
    @user = User.find(params[:id])

		# if logged_in?
		# 	@user = User.find(params[:id])
		# else
		# 	redirect_to root_path
		# end 
	end 
#signup to create a new user
	def create
	  @user = User.new(user_params)
	  if @user.save
		session[:user_id] = @user.id
		flash[:success] = "Welcome #{@user.first_name}."
		redirect_to user_path(@user) #is this right? user may want to go back to 
			#home. Or -- answer a few questions, to become a super user and expert 
			#that page should have links to soupkitchens and 
	  else 
		render :new, :alert => "Try again."
  	  end
	end

  private
	def user_params
      params.require(:user).permit( :first_name, :last_name, :email, :mobile_number, :zipcode, :about_me, :password)
    end
end
