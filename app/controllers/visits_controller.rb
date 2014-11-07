class VisitsController < ApplicationController
	def index
		@visits = Visit.all
	end
	def new
		@visit = Visit.new
	end
	def create
		@visit = Visit.create(visit_params)
		if @visit.save
			flash[:notice] = "Congratulations, you visited a new Kingdom"
			redirect_to(users_path) 
		else
			@errors	= @visit.errors.full_messages
			flash[:error] = "Sorry, you are not able to enter in our Kingdom"

      render 'new'
		end
	end
	def visit_params
		params.require(:visit).permit(:location_id, :user_id, :from_date, :to_date)
	end
end
