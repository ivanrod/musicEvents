class VisitsController < ApplicationController
	def index
		@visits = Visit.all
		@user = User.find(params[:user_id])

	end
	def new
		@visit = Visit.new
		@user = User.find(params[:user_id])
		@locations = Location
	end
	def create
		@visit = Visit.create(new_user_visit_params)
		if @visit.save
			puts params[:location_id]
			flash[:notice] = "Congratulations, you visited a new Kingdom"
			redirect_to(users_path) 
		else
			@errors	= @visit.errors.full_messages
			
			flash[:error] = "Sorry, you are not able to enter in our Kingdom"

      render 'new'
		end
	end
	def new_user_visit_params
		params.require(:visit).permit(:location_id, :user_id, :from_date, :to_date)
	end
end
