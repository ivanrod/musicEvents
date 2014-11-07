class LocationsController < ApplicationController
	def index
		@locations = Location.all
	end
	def show
		@location = Location.find_by_name(params[:id])
	end
	def new
		@location = Location.new
	end
	def create
		@location = Location.create(location_params)
		if @location.save
			flash[:notice] = "Congratulation, your location has been created. A Lannister allways pays his debts"
			redirect_to(locations_path) 
		else
			@errors	= @location.errors.full_messages
			flash[:error] = "Sorry, your location has not been created"

            render 'new'
		end
	end
	def edit
	end

	private
	def location_params
		params.require(:location).permit(:name, :city, :latitud, :longitud)
	end
end
