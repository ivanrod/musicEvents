class UsersController < ApplicationController
	def index
		@users = User.all
	end
	def new
		@user = User.new
	end
	def create
		@user = User.create(user_params)
		if @user.save
			flash[:notice] = "Congratulations, you are a new Lannister"
			redirect_to(users_path) 
		else
			@errors	= @user.errors.full_messages
			flash[:error] = "Sorry, your cannot be a Lannister"

      render 'new'
		end

	end
	def user_params
		params.require(:user).permit(:name, :email)
	end
end
